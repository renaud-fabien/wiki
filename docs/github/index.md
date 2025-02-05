# Create a new GitHub organization

## Prerequisites

- GitHub account
- HCP Terraform account
- AWS management account

## Create GitHub organization

![GitHub / Create GitHub organization / Pick a plan](assets/github-create-github-organization-pick-a-plan.png)

1. Go to https://github.com/organizations/plan , then click on `Create a free organization`

![GitHub / Create GitHub organization / Set up your organization](assets/github-create-github-organization-set-up-your-organization.png)

2. Fill your organization information, then click on `Next`

![GitHub / Create GitHub organization / Add organization members](assets/github-create-github-organization-add-organization-members.png)

3. Click on `Skip this step`

## Create GitHub App

![GitHub / Create GitHub App / New GitHub App](assets/github-create-github-app-new-github-app.png)

1. Go to your organization home page `https://github.com/fabien-renaud-organization`, then click on `Settings` > `Developer Settings` > `GitHub Apps` > `New GitHub App`

![GitHub / Create GitHub App / Register new GitHub App](assets/github-create-github-app-register-new-github-app.png)
![GitHub / Create GitHub App / Register new GitHub App / Create GitHub App](assets/github-create-github-app-register-new-github-app-create-github-app.png)

2. Fill your GitHub App information, then click on `Create GitHub App`

- **GitHub App name**: `organization-infrastructure`
- **Description**: `GitHub App used by fabien-renaud-organization/organization-infrastructure to provision GitHub resources`
- **Homepage URL**: `https://github.com/fabien-renaud-organization/organization-infrastructure`
- **Webhooks**: `disabled`
- **Repository permissions**:
  - **Administration:** `Read and write` # Repository creation, deletion, settings, teams, and collaborators
  - **Contents:** `Read and write`       # Repository contents, commits, branches, downloads, releases, and merges
  - **Metadata:** `Read-only`            # (Mandatory) Search repositories, list collaborators, and access repository metadata
  - **Pages:** `Read and write`          # Retrieve Pages statuses, configuration, and builds, as well as create new builds
- **Organization permissions**
  - **Administration:** `Read and write` # Manage access to an organization
  - **Members:** `Read and write`        # Organization members and teams
- **Where can this GitHub App be installed?**: `Any account`

![GitHub / Create GitHub App / Register new GitHub App](assets/github-create-github-app-settings.png)
![GitHub / Create GitHub App / Register new GitHub App](assets/github-create-github-app-settings-generate-a-private-key.png)
![GitHub / Create GitHub App / Register new GitHub App](assets/github-create-github-app-settings-generate-a-private-key-added.png)

3. Scroll down to `Private keys`, then click on `Generate a private key`

## Create HCP Terraform organization

![create-hcp-terraform-organization.png](assets/create-hcp-terraform-organization.png)

## Create HCP Terraform project

// TODO

## Create HCP Terraform workspace

// TODO
