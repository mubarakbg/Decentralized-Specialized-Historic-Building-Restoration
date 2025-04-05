# Decentralized Specialized Historic Building Restoration

A blockchain-based platform for documenting, verifying, and coordinating historic building restoration projects with transparent craftsperson credentials, material authentication, and preservation standard compliance.

## Overview

This decentralized system transforms the historic building restoration process by creating a comprehensive platform where property owners, craftspeople, conservators, and regulatory bodies can collaborate with full transparency and accountability. By leveraging blockchain technology, the platform ensures restoration projects maintain historical authenticity while providing verifiable documentation of structures, craftspeople qualifications, material sourcing, and adherence to preservation standards.

## Core Components

### Structure Registration Contract

The structure registration contract establishes a verifiable registry of historic properties with comprehensive documentation.

- **Building Documentation**: Records architectural details, historical significance, and original construction techniques
- **Condition Assessment**: Documents current state, structural issues, and preservation needs
- **Historical Archive**: Stores photographs, architectural drawings, and historical documents
- **Ownership Verification**: Validates property rights and restoration authorization
- **Modification History**: Tracks previous restoration and modification activities
- **Heritage Classification**: Records official historic designations and protection status
- **Geographic Information**: Maps precise location and contextual environment

### Craftsperson Verification Contract

This contract validates and documents the qualifications of restoration specialists with expertise in traditional techniques.

- **Skill Certification**: Verification of expertise in specific restoration disciplines
- **Portfolio Management**: Documentation of previous restoration projects
- **Training Credentials**: Records of specialized education and apprenticeships
- **Guild Affiliations**: Connections to recognized craft organizations
- **Expert Endorsements**: Peer-reviewed skill validation system
- **Specialization Registry**: Categorization by craft type and historical period expertise
- **Continuing Education**: Tracking of ongoing skill development and knowledge acquisition

### Material Authentication Contract

Ensures the authenticity and appropriateness of materials used in historic restorations.

- **Material Provenance**: Tracks origin and chain of custody of restoration materials
- **Period Verification**: Validates historical accuracy of materials for specific time periods
- **Sustainable Sourcing**: Documents environmentally responsible material acquisition
- **Laboratory Analysis**: Records scientific testing of material composition and age
- **Salvage Documentation**: Validates reclaimed historic materials from other structures
- **Traditional Production**: Verifies materials created using historically accurate methods
- **Integration Approval**: Validates compatibility of materials with existing structure

### Preservation Standard Contract

Monitors and enforces compliance with historical preservation guidelines throughout restoration projects.

- **Standards Repository**: Digital library of applicable preservation guidelines
- **Project Planning**: Documentation of restoration approaches and methodologies
- **Approval Workflow**: Multi-stakeholder authorization of restoration plans
- **Progress Documentation**: Photographic and written records of ongoing work
- **Inspection Verification**: Independent assessment of adherence to standards
- **Deviation Management**: Protocols for handling necessary departures from guidelines
- **Certification Issuance**: Final verification of project compliance with preservation standards

## Technical Architecture

- **Blockchain**: Ethereum, Polygon, or other suitable public/private blockchain
- **Smart Contracts**: Self-executing contracts with restoration-specific logic
- **Storage**: IPFS for detailed documentation, photographs, and architectural drawings
- **3D Documentation**: Integration with photogrammetry and laser scanning technologies
- **Mobile Applications**: Field-friendly tools for on-site documentation
- **AR Capabilities**: Augmented reality visualization of historical conditions and restoration plans
- **Regulatory API**: Integration points with heritage protection authorities

## Getting Started

### Prerequisites

- Node.js (v16+)
- Truffle or Hardhat development framework
- Web3 wallet for transaction signing
- Access to blockchain network

### Installation

1. Clone the repository:
   ```
   git clone https://github.com/your-organization/historic-restoration-blockchain.git
   cd historic-restoration-blockchain
   ```

2. Install dependencies:
   ```
   npm install
   ```

3. Configure environment:
   ```
   cp .env.example .env
   ```
   Edit the `.env` file with your specific configuration values.

4. Compile contracts:
   ```
   npx hardhat compile
   ```

5. Deploy to network:
   ```
   npx hardhat run scripts/deploy.js --network [network-name]
   ```

## Usage Examples

### For Property Owners and Heritage Organizations

```javascript
// Register a historic structure
await structureContract.registerBuilding(
  propertyDetails,
  historicalSignificance,
  architecturalFeatures,
  preservationNeeds,
  documentationCID,
  heritageListing
);

// Initiate restoration project
const projectId = await preservationContract.createProject(
  buildingId,
  restorationScope,
  timelineEstimates,
  preservationPrinciples,
  budgetAllocation
);
```

### For Craftspeople and Restoration Specialists

```javascript
// Register craftsperson credentials
await craftspersonContract.registerSpecialist(
  personalInfo,
  specializations,
  trainingCredentials,
  portfolioLinks,
  guildMemberships
);

// Document restoration work
await preservationContract.recordWorkProgress(
  projectId,
  workDescription,
  techniquesUtilized,
  visualDocumentationCID,
  challengesEncountered
);
```

### For Material Suppliers and Conservators

```javascript
// Register authentic restoration materials
const materialBatchId = await materialContract.registerMaterials(
  materialType,
  sourceInformation,
  productionMethod,
  dateOfProduction,
  compositionDetails,
  certificationDocuments
);

// Verify material application
await materialContract.recordMaterialUsage(
  projectId,
  materialBatchId,
  applicationLocation,
  installationMethod,
  integrationDocumentation
);
```

## Benefits

- **Historical Accuracy**: Enhanced verification of appropriate techniques and materials
- **Qualification Transparency**: Clear validation of craftsperson expertise and experience
- **Documentation Preservation**: Immutable record of restoration decisions and processes
- **Regulatory Compliance**: Streamlined adherence to preservation guidelines
- **Knowledge Transfer**: Captured expertise in traditional building techniques
- **Material Traceability**: Verifiable sourcing of authentic and appropriate materials
- **Project Coordination**: Improved collaboration between diverse stakeholders
- **Heritage Protection**: Better long-term conservation of cultural architectural assets

## Roadmap

- **Q2 2025**: Integration with historical building information modeling (HBIM)
- **Q3 2025**: Implementation of decentralized funding mechanisms for preservation projects
- **Q4 2025**: Development of AI-assisted condition assessment tools
- **Q1 2026**: Expansion to include intangible heritage documentation (traditional techniques)

## Heritage Standards Integration

The system is designed to align with key preservation frameworks:

- UNESCO World Heritage Convention guidelines
- ICOMOS Charter principles for built heritage conservation
- National Register of Historic Places criteria (US)
- European Standard EN 16853 (Conservation of cultural heritage)
- The Venice Charter for historic monument conservation
- Local and national landmark preservation regulations

## Contributing

We welcome contributions from preservation architects, craftspeople, conservation scientists, heritage organizations, and blockchain developers. Please see [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For questions or support, please contact:
- Email: support@historic-restoration-blockchain.org
- Discord: [Join our server](https://discord.gg/historicpreservation)
- Twitter: [@HistoricDLT](https://twitter.com/HistoricDLT)
