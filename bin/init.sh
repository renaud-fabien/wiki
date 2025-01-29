#!/bin/bash

# Install moreutils
dpkg --verify moreutils || sudo apt-get install moreutils

# Ask for inputs
read -p "Enter value for fqdn: " fqdn;
read -p "Enter value for organization name: " organization_name;
read -p "Enter value for repository name: " repository_name;

# Show the entered values for verification
echo ""
echo "You entered the following values:"
echo "fqdn: $fqdn"
echo "repository name: $repository_name"
echo "organization name: $organization_name"
echo ""

# Ask for confirmation
read -p "Do you want to perform these actions (yes/no): " confirmation

if [[ "$confirmation" =~ ^[Yy][Ee][Ss]$ || "$confirmation" =~ ^[Yy]$ ]]; then
  echo "Exporting environment variables..."
  export ENV_BIN_INIT_SH_FQDN=$fqdn
  export ENV_BIN_INIT_SH_ORGANIZATION_NAME=$organization_name
  export ENV_BIN_INIT_SH_REPOSITORY_NAME=$repository_name

  echo "Replacing placeholders in template files..."
  envsubst < .github/workflows/99-build-and-publish-documentation.yml | sponge .github/workflows/99-build-and-publish-documentation.yml
  envsubst < docs/CNAME | sponge docs/CNAME
  envsubst < docs/index.md | sponge docs/index.md
  envsubst < mkdocs.yml | sponge mkdocs.yml

  echo "Done! Deleting script..."
  rm -- "$0" && rm -rf bin
else
  echo "Cancelled. Please run the script again to re-enter the values."
fi
