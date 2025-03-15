#!/bin/bash

# Script to set up a new project using the .solution-creation-kit

# Define default values
PROJECT_NAME="MyProject"
KIT_DIR="/Volumes/PRO-G40/development/az-work/project-kit/.solution-creation-kit"

# Parse command-line arguments
while [[ $# -gt 0 ]]; do
  case "$1" in
    --project-name)
      PROJECT_NAME="$2"
      shift
      ;;
    --kit-dir)
      KIT_DIR="$2"
      shift
      ;;
    *)
      echo "Unknown parameter: $1"
      exit 1
      ;;
  esac
  shift
done

# Define the root directory
ROOT_DIR="."

# Copy the contents of the .solution-creation-kit directory to the root directory
#cp -r "$KIT_DIR/"* "$ROOT_DIR"

# Generate the documentation structure
bash "$KIT_DIR/scripts/generate-docs-structure.sh" "$PROJECT_NAME"

# Create a .gitignore file
cat > "$ROOT_DIR/.gitignore" <<EOL
node_modules
.DS_Store
/docs/*
!/docs/.git
EOL

# Create a README.md file
cp "$KIT_DIR/templates/readme-template.md" "$ROOT_DIR/README.md"
sed -i "" "s/{{project_name}}/${PROJECT_NAME}/g" "$ROOT_DIR/README.md"

echo "Project setup complete!"
echo "Run 'cd docs && git init && git add . && git commit -m \"Initial documentation commit\"' to track documentation changes"