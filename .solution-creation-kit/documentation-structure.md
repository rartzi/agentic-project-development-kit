# Documentation Structure and Guidelines for {{project_name}}

## 1. Overview

This document outlines the documentation structure and guidelines for the {{project_name}} platform. It provides a comprehensive guide for creating, organizing, and maintaining project documentation to ensure consistency and completeness.

## 2. Documentation Folder Structure

The project documentation is organized in the following structure:

```
docs/
├── README.md                      # Documentation overview and entry point
├── prd.md                         # Product Requirements Document
├── prompt-start.md                # Session start guide
├── prompt-end.md                  # Session end guide
├── architecture/                  # Architecture documentation
│   ├── overview.md                # High-level architecture overview
│   ├── component-architecture.md  # Component architecture details
│   ├── core-components.md         # Core components documentation
│   ├── data-model.md              # Data model and schema documentation
│   ├── api-architecture.md        # API architecture documentation
│   ├── frontend-architecture.md   # Frontend architecture documentation
│   ├── security-architecture.md   # Security architecture documentation
│   ├── deployment-architecture.md # Deployment architecture documentation
│   └── monitoring-logging.md      # Monitoring and logging documentation
├── frontend/                      # Frontend documentation
│   ├── overview.md                # Frontend overview
│   ├── components.md              # UI components documentation
│   ├── styling.md                 # Styling guidelines and system
│   ├── state-management.md        # State management patterns
│   ├── routing.md                 # Routing and navigation
│   ├── forms.md                   # Form handling and validation
│   ├── accessibility.md           # Accessibility guidelines
│   └── testing.md                 # Frontend testing strategies
├── backend/                       # Backend documentation
│   ├── overview.md                # Backend overview
│   ├── api-architecture.md        # API design principles
│   ├── api-implementation.md      # API implementation details
│   ├── auth.md                    # Authentication and authorization
│   ├── data-access.md             # Data access patterns
│   ├── validation.md              # Input validation
│   ├── error-handling.md          # Error handling strategies
│   └── services.md                # Service layer implementation
├── project-management/            # Project management documentation
│   ├── development-process.md     # Development workflow and practices
│   └── roadmap.md                 # Project roadmap and timeline
├── sessions/                      # Development session documentation
│   ├── session-template.md        # Template for session documentation
│   └── YYYY-MM-DD-focus-area.md   # Individual session documents
└── tracking/                      # Change tracking documentation
    ├── CHANGELOG.md               # Project changelog
    └── [feature]-commit-message.md # Commit messages for features
```

## 3. Documentation Types and Naming Conventions

### 3.0 README and User Guide Documentation

- **README.md**: This file serves as the entry point for the project. It should exist in both the root directory and the `/docs` directory. It should provide:
    - A high-level overview of the project
    - Instructions on how to set up the development environment
    - Quick start guide for developers
    - Links to other relevant documentation

- **User Guides**: These guides are designed for end-users and should provide:
    - Step-by-step instructions on how to use the solution
    - Troubleshooting tips
    - FAQs
    - Examples of common use cases

### 3.1 Developer Documentation

Developer documentation is intended for developers working on the project and includes:

- Core documentation (architecture, frontend, backend, project management)
- Session documentation
- Tracking documentation

### 3.2 End-User Documentation

End-user documentation is intended for users of the solution and should be tailored to different user personas (e.g., admins, regular users). It includes:

- User guides
- FAQs
- Troubleshooting tips

### 3.3 Core Documentation

Core documentation includes foundational documents that define the project and is intended for developers:

- **README.md (in /docs)**: Overview of the documentation structure
- **prd.md**: Product Requirements Document
- **Architecture documents**: Files in the `architecture/` directory
- **Frontend documents**: Files in the `frontend/` directory
- **Backend documents**: Files in the `backend/` directory
- **Project management documents**: Files in the `project-management/` directory

### 3.2 Session Documentation

Session documentation tracks individual development sessions:

- **File naming**: `YYYY-MM-DD-focus-area.md` (e.g., `2025-03-15-auth-improvements.md`)
- **Location**: All session documents should be stored in the `docs/sessions/` directory
- **Template**: Use `session-template.md` as the starting point for all session documents

### 3.3 Tracking Documentation

Tracking documentation records changes and commit messages:

- **CHANGELOG.md**: Records all significant changes to the project
- **Feature-specific files**: Named as `[feature]-commit-message.md`, `[feature]-git-commands.md`, or `[feature]-pr-description.md`

## 4. Documentation Content Guidelines

### 4.1 Required Sections for Core Documentation

Each core documentation file should include:

- **Title**: Clear, descriptive title
- **Overview**: Brief introduction to the document's purpose
- **Detailed Content**: Comprehensive information about the topic
- **Related Documents**: Links to related documentation
- **Future Considerations**: (Optional) Notes about planned changes or improvements

### 4.2 Required Sections for Session Documentation

Each session document should include:

- **Progress Summary**: Concise overview of what was accomplished
- **Completed Tasks**: List of all completed tasks
- **Technical Decisions**: Documentation of any technical decisions made
- **Files Modified**: List of all files modified
- **Key Implementations**: Description of key code implementations
- **Testing Performed**: Documentation of any testing performed
- **Documentation Updates**: List of documentation changes
- **Next Steps**: Clear next steps for future work
- **Action Items**: Specific action items for future work

### 4.3 Documentation Style Guidelines

- Use clear, concise language
- Use Markdown formatting consistently
- Include code examples where appropriate
- Use diagrams to illustrate complex concepts (Mermaid diagrams recommended)
- Keep documentation up-to-date with code changes
- Cross-reference related documents

### 4.4 Testing Strategy and Implementation

The project requires a comprehensive testing strategy that covers:

- **Backend**: Unit tests, integration tests, and API tests.  See `backend/testing.md` for details.
- **Frontend**: Unit tests, component tests, and end-to-end tests. See `frontend/testing.md` for details.
- **Configuration**: Validation of environment variables and settings.
- **Deployment**: Verification of deployment process and infrastructure.

Documentation should include:

- Testing frameworks and tools used
- Test coverage metrics
- Instructions on how to run tests
- Examples of different types of tests

## 5. Documentation Workflow
### 5.1 Creating New Documentation

1. Identify the appropriate documentation type and location
2. Use the relevant template from `.solution-creation-kit/templates/` as a starting point:
   - For pull requests: `.solution-creation-kit/templates/tracking/pull-request-template.md`
   - For session documentation: `.solution-creation-kit/templates/sessions/session-template.md`
   - For architecture documentation: `.solution-creation-kit/templates/architecture/*.md`
   - For frontend/backend documentation: `.solution-creation-kit/templates/frontend/*.md` or `.solution-creation-kit/templates/backend/*.md`
3. Follow the content guidelines for the specific document type
4. Include all required sections
5. Cross-reference related documents
5. Cross-reference related documents

### 5.2 Updating Existing Documentation

When making code changes, update the relevant documentation:

- Update component documentation if you modified or added components
- Update API documentation if you modified or added API endpoints
- Update data model documentation if you modified the database schema
- Update architecture documents if you made architectural changes
- Create or update session documentation for your development session

### 5.3 Documentation Review Process

All documentation changes should be reviewed for:

- Accuracy and completeness
- Adherence to structure and style guidelines
- Consistency with other documentation
- Clear explanations of complex concepts
- Proper cross-referencing

## 6. Templates and Examples

### 6.1 Session Document Template

Use the template at `.solution-creation-kit/templates/sessions/session-template.md` for all session documentation.

### 6.2 Architecture Document Template

Architecture documents should follow this structure:

```markdown
# [Component] Architecture

## Overview
Brief description of the component and its purpose.

## Design Principles
Key design principles and patterns used.

## Component Structure
Detailed breakdown of the component structure.

## Interactions
How this component interacts with other components.

## Implementation Details
Specific implementation details and considerations.

## Future Considerations
Planned improvements or extensions.
```

### 6.3 Pull Request Template

Use the template at `.solution-creation-kit/templates/tracking/pull-request-template.md` for all pull requests. This template includes:

- Title (feature name)
- Description
- Changes Made
- Testing Instructions
- Screenshots
- Related Issues
- Breaking Changes
- Checklist (code style, documentation, testing, etc.)

### 6.4 API Documentation Template

API documentation should follow this structure:

```markdown
# [API Name] Documentation

## Overview
Purpose and scope of the API.

## Endpoints
Detailed documentation of each endpoint:

### `GET /resource`
- **Description**: What this endpoint does
- **Parameters**: Required and optional parameters
- **Response**: Expected response format
- **Error Handling**: Possible errors and their handling
- **Example**: Usage example with request and response

## Authentication
Authentication requirements and methods.

## Rate Limiting
Any rate limiting considerations.

## Versioning
API versioning strategy.
```

## 7. Template Reference System

### 7.1 Available Templates
The solution creation kit provides these core templates:

- **Development Process Templates**
  - `templates/tracking/pull-request-template.md`: Standard PR template
  - `templates/tracking/changelog-template.md`: Changelog structure
  - `templates/sessions/session-template.md`: Session documentation
  
- **Architecture Templates**
  - `templates/architecture/*-template.md`: Component, API, and deployment templates
  
- **Frontend/Backend Templates**
  - `templates/frontend/*-template.md`: UI components, accessibility, styling
  - `templates/backend/*-template.md`: API implementation, data access

- **Project Management Templates**
  - `templates/project-management/development-process-template.md`
  - `templates/project-management/roadmap-template.md`

- **Legal & Governance Templates**
  - `templates/legal/*-template.md`: Licensing, contributor agreements
  - `templates/governance/*-template.md`: Data handling, privacy policies

## 8. Alignment with Development Process

This documentation structure and these guidelines align with the development process defined in `development-process.md` and the workflow rules in `.cursorrules`. They support:

- The session start and end processes
- The documentation requirements for different types of changes
- The validation rules for documentation completeness
- The file watchers for automatic documentation updates

By following these guidelines, you ensure that your documentation remains comprehensive, consistent, and up-to-date with the codebase.