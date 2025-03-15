#!/bin/bash

# Script to generate the documentation folder structure for a new project

# Define the project name
PROJECT_NAME="${1:-MyProject}"

# Define the root documentation directory
DOCS_DIR="docs"

# Define the .solution-creation-kit directory
KIT_DIR="/Volumes/PRO-G40/development/az-work/project-kit/.solution-creation-kit"

# Create the root documentation directory
mkdir -p "$DOCS_DIR"

# Create the subdirectories
mkdir -p "$DOCS_DIR/architecture"
mkdir -p "$DOCS_DIR/backend"
mkdir -p "$DOCS_DIR/frontend"
mkdir -p "$DOCS_DIR/project-management"
mkdir -p "$DOCS_DIR/sessions"
mkdir -p "$DOCS_DIR/tracking"
mkdir -p "$DOCS_DIR/governance"
mkdir -p "$DOCS_DIR/legal"

# Create the template files
cp "$KIT_DIR/templates/architecture/api-architecture-template.md" "$DOCS_DIR/architecture/api-architecture.md"
cp "$KIT_DIR/templates/architecture/component-architecture-template.md" "$DOCS_DIR/architecture/component-architecture.md"
cp "$KIT_DIR/templates/architecture/core-components-template.md" "$DOCS_DIR/architecture/core-components.md"
cp "$KIT_DIR/templates/architecture/data-model-template.md" "$DOCS_DIR/architecture/data-model.md"
cp "$KIT_DIR/templates/architecture/deployment-architecture-template.md" "$DOCS_DIR/architecture/deployment-architecture.md"
cp "$KIT_DIR/templates/architecture/frontend-architecture-template.md" "$DOCS_DIR/architecture/frontend-architecture.md"
cp "$KIT_DIR/templates/architecture/monitoring-logging-template.md" "$DOCS_DIR/architecture/monitoring-logging.md"
cp "$KIT_DIR/templates/architecture/overview-template.md" "$DOCS_DIR/architecture/overview.md"
cp "$KIT_DIR/templates/security/security-architecture-template.md" "$DOCS_DIR/architecture/security-architecture.md"

cp "$KIT_DIR/templates/backend/api-architecture-template.md" "$DOCS_DIR/backend/api-architecture.md"
cp "$KIT_DIR/templates/backend/api-implementation-template.md" "$DOCS_DIR/backend/api-implementation.md"
cp "$KIT_DIR/templates/backend/auth-template.md" "$DOCS_DIR/backend/auth.md"
cp "$KIT_DIR/templates/backend/data-access-template.md" "$DOCS_DIR/backend/data-access.md"
cp "$KIT_DIR/templates/backend/error-handling-template.md" "$DOCS_DIR/backend/error-handling.md"
cp "$KIT_DIR/templates/backend/overview-template.md" "$DOCS_DIR/backend/overview.md"
cp "$KIT_DIR/templates/backend/services-template.md" "$DOCS_DIR/backend/services.md"
cp "$KIT_DIR/templates/backend/validation-template.md" "$DOCS_DIR/backend/validation.md"

cp "$KIT_DIR/templates/frontend/accessibility-template.md" "$DOCS_DIR/frontend/accessibility.md"
cp "$KIT_DIR/templates/frontend/components-template.md" "$DOCS_DIR/frontend/components.md"
cp "$KIT_DIR/templates/frontend/forms-template.md" "$DOCS_DIR/frontend/forms.md"
cp "$KIT_DIR/templates/frontend/overview-template.md" "$DOCS_DIR/frontend/overview.md"
cp "$KIT_DIR/templates/frontend/routing-template.md" "$DOCS_DIR/frontend/routing.md"
cp "$KIT_DIR/templates/frontend/state-management-template.md" "$DOCS_DIR/frontend/state-management.md"
cp "$KIT_DIR/templates/frontend/styling-template.md" "$DOCS_DIR/frontend/styling.md"
cp "$KIT_DIR/templates/frontend/testing-template.md" "$DOCS_DIR/frontend/testing.md"

cp "$KIT_DIR/templates/project-management/development-process-template.md" "$DOCS_DIR/project-management/development-process.md"
cp "$KIT_DIR/templates/project-management/roadmap-template.md" "$DOCS_DIR/project-management/roadmap.md"

cp "$KIT_DIR/templates/sessions/session-template.md" "$DOCS_DIR/sessions/session-template.md"

cp "$KIT_DIR/templates/tracking/changelog-template.md" "$DOCS_DIR/tracking/CHANGELOG.md"

cp "$KIT_DIR/templates/governance/overview-template.md" "$DOCS_DIR/governance/overview.md"
cp "$KIT_DIR/templates/governance/data-privacy-template.md" "$DOCS_DIR/governance/data-privacy.md"
cp "$KIT_DIR/templates/governance/data-handling-template.md" "$DOCS_DIR/governance/data-handling.md"

cp "$KIT_DIR/templates/legal/license-template.md" "$DOCS_DIR/legal/license.md"
cp "$KIT_DIR/templates/legal/terms-of-service-template.md" "$DOCS_DIR/legal/terms-of-service.md"
cp "$KIT_DIR/templates/legal/contributor-guidelines-template.md" "$DOCS_DIR/legal/contributor-guidelines.md"

cp "$KIT_DIR/templates/prd-template.md" "$DOCS_DIR/prd.md"
cp "$KIT_DIR/templates/prompt-start-template.md" "$DOCS_DIR/prompt-start.md"
cp "$KIT_DIR/templates/prompt-end-template.md" "$DOCS_DIR/prompt-end.md"
cp "$KIT_DIR/templates/readme-template.md" "$DOCS_DIR/README.md"

# Replace template variables
find "$DOCS_DIR" -type f -name "*.md" -print0 | while IFS= read -r -d $'\0' file; do
  sed -i "" "s/{{project_name}}/${PROJECT_NAME}/g" "$file"
done

echo "Documentation structure generated successfully in '$DOCS_DIR'"
