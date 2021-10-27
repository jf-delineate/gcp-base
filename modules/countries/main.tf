resource "google_folder" "this" {
  display_name = "countries"
  parent       = data.google_organization.this.name
}

module "policies" {
  source = "../../modules/policies"
  
  domain = var.domain
  enable_policies = ["constraints/appengine.disableCodeDownload",
    "constraints/gcp.detailedAuditLoggingMode",
    "constraints/compute.disableInternetNetworkEndpointGroup",
    "constraints/compute.disableNestedVirtualization",
    "constraints/compute.disableSerialPortAccess",
    "constraints/compute.disableSerialPortLogging",
    "constraints/compute.requireOsLogin",
    "constraints/compute.requireShieldedVm",
    "constraints/compute.restrictXpnProjectLienRemoval",
    "constraints/compute.setNewProjectDefaultToZonalDNSOnly",
    "constraints/compute.skipDefaultNetworkCreation",
    "constraints/iam.automaticIamGrantsForDefaultServiceAccounts",
    "constraints/iam.disableServiceAccountKeyUpload",
    "constraints/iam.restrictCrossProjectServiceAccountLienRemoval",
    "constraints/storage.uniformBucketLevelAccess",
  "constraints/sql.restrictPublicIp"]

  disable_policies = ["constraints/iam.disableServiceAccountCreation",
    "constraints/compute.disableGuestAttributesAccess",
    "constraints/iam.disableServiceAccountCreation",
    "constraints/iam.disableServiceAccountKeyCreation",
    "constraints/gcp.disableCloudLogging",
  "sql.disableDefaultEncryptionCreation"]

  deny_all_policies = ["constraints/compute.disablePrivateServiceConnectCreationForConsumers",
    "constraints/compute.restrictDedicatedInterconnectUsage",
    "constraints/compute.restrictDirectGoogleAccess",
    "constraints/compute.restrictPartnerInterconnectUsage",
    "constraints/compute.restrictProtocolForwardingCreationForTypes",
    "constraints/compute.restrictSharedVpcHostProjects",
    "constraints/compute.restrictSharedVpcSubnetworks",
    "constraints/compute.restrictVpcPeering",
    "constraints/compute.restrictVpnPeerIPs",
    "constraints/compute.vmCanIpForward",
    "constraints/compute.vmExternalIpAccess",
    "constraints/iam.allowServiceAccountCredentialLifetimeExtension",
    "constraints/iam.workloadIdentityPoolAwsAccounts",
    "constraints/iam.workloadIdentityPoolProviders",
    "constraints/resourcemanager.allowEnabledServicesForExport",
    "constraints/resourcemanager.allowedExportDestinations",
    "constraints/resourcemanager.allowedImportSources",
  "constraints/compute.restrictVpnPeerIPs"]

  allow_customer_policies = ["constraints/iam.allowedPolicyMemberDomains"]

  allow_domain_policies = ["constraints/essentialcontacts.allowedContactDomains"]
}




