;; Craftsperson Verification Contract
;; Validates expertise in traditional techniques

(define-constant contract-owner tx-sender)

;; Craftsperson data map
(define-map craftspeople
  { address: principal }
  {
    name: (string-utf8 100),
    specialties: (list 10 (string-utf8 50)),
    experience-years: uint,
    verified: bool
  }
)

;; Register as a craftsperson
(define-public (register-craftsperson
    (name (string-utf8 100))
    (specialties (list 10 (string-utf8 50)))
    (experience-years uint))
  (let
    (
      (address tx-sender)
    )
    ;; Add craftsperson to map
    (map-set craftspeople
      { address: address }
      {
        name: name,
        specialties: specialties,
        experience-years: experience-years,
        verified: false
      }
    )

    (ok true)
  )
)

;; Verify a craftsperson (only contract owner can do this)
(define-public (verify-craftsperson (address principal))
  (let
    (
      (craftsperson (unwrap! (map-get? craftspeople { address: address }) (err u1)))
    )
    ;; Check if caller is the contract owner
    (asserts! (is-eq tx-sender contract-owner) (err u403))

    ;; Update verification status
    (map-set craftspeople
      { address: address }
      (merge craftsperson { verified: true })
    )

    (ok true)
  )
)

;; Revoke verification
(define-public (revoke-verification (address principal))
  (let
    (
      (craftsperson (unwrap! (map-get? craftspeople { address: address }) (err u1)))
    )
    ;; Check if caller is the contract owner
    (asserts! (is-eq tx-sender contract-owner) (err u403))

    ;; Update verification status
    (map-set craftspeople
      { address: address }
      (merge craftsperson { verified: false })
    )

    (ok true)
  )
)

;; Get craftsperson details
(define-read-only (get-craftsperson (address principal))
  (map-get? craftspeople { address: address })
)

;; Check if craftsperson is verified
(define-read-only (is-verified (address principal))
  (default-to false (get verified (map-get? craftspeople { address: address })))
)

