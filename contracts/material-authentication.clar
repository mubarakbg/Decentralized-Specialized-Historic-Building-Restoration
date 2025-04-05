;; Material Authentication Contract
;; Verifies appropriate restoration components

(define-constant contract-owner tx-sender)
(define-data-var last-material-id uint u0)

;; Material data map
(define-map materials
  { id: uint }
  {
    name: (string-utf8 100),
    type: (string-utf8 50),
    source: (string-utf8 100),
    authenticated: bool
  }
)

;; Material usage tracking
(define-map material-usage
  { material-id: uint, structure-id: uint }
  {
    quantity: uint,
    used-by: principal
  }
)

;; Register a new material
(define-public (register-material
    (name (string-utf8 100))
    (type (string-utf8 50))
    (source (string-utf8 100)))
  (let
    (
      (new-id (+ (var-get last-material-id) u1))
    )
    ;; Update last ID
    (var-set last-material-id new-id)

    ;; Add material to map
    (map-set materials
      { id: new-id }
      {
        name: name,
        type: type,
        source: source,
        authenticated: false
      }
    )

    (ok new-id)
  )
)

;; Authenticate a material (only by contract owner)
(define-public (authenticate-material (id uint))
  (let
    (
      (material (unwrap! (map-get? materials { id: id }) (err u1)))
    )
    ;; Check if caller is the contract owner
    (asserts! (is-eq tx-sender contract-owner) (err u403))

    ;; Update authentication status
    (map-set materials
      { id: id }
      (merge material { authenticated: true })
    )

    (ok true)
  )
)

;; Record material usage in a structure
(define-public (record-material-usage
    (material-id uint)
    (structure-id uint)
    (quantity uint))
  (let
    (
      (material (unwrap! (map-get? materials { id: material-id }) (err u1)))
    )
    ;; Check if material is authenticated
    (asserts! (get authenticated material) (err u2))

    ;; Record usage
    (map-set material-usage
      { material-id: material-id, structure-id: structure-id }
      {
        quantity: quantity,
        used-by: tx-sender
      }
    )

    (ok true)
  )
)

;; Get material details
(define-read-only (get-material (id uint))
  (map-get? materials { id: id })
)

;; Get material usage for a structure
(define-read-only (get-material-usage (material-id uint) (structure-id uint))
  (map-get? material-usage { material-id: material-id, structure-id: structure-id })
)

;; Check if material is authenticated
(define-read-only (is-authenticated (id uint))
  (default-to false (get authenticated (map-get? materials { id: id })))
)

