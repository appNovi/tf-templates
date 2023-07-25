# appNovi Terraform Module
appNovi Terraform Module Repository

## Description
The following Terraform module is used to setup the AWS Inventory integration for appNovi.

### Usage
From within the appNovi AWS Integration configuration, you will setup a ExternalId.  This ExternalId will be used within this module.

How to use this module:
``` tf
provider "aws" {
    region = "us-east-2"
}

module "appnovi_integration_role" {
    source = "github.com/appNovi/tf-templates//integration-modules/aws-integration-module"
    external_id = "CHANGEME"
}

```
### Inputs
The external_id is required.

### Outputs

The module will output the required ARN for the appNovi integration.