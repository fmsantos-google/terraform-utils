locals {
  org_policies_override = [
    "appengine.disableCodeDownload",
    "cloudbuild.allowedWorkerPools",
    "cloudfunctions.allowedIngressSettings",
    "compute.disableInternetNetworkEndpointGroup",
    "compute.disableNestedVirtualization",
    "compute.disableSerialPortAccess",
    "compute.requireOsLogin",
    "compute.requireShieldedVm",
    "compute.restrictDedicatedInterconnectUsage",
    "compute.restrictPartnerInterconnectUsage",
    "compute.restrictVpcPeering",
    "compute.restrictVpnPeerIPs",
    "compute.skipDefaultNetworkCreation",
    "compute.storageResourceUseRestrictions",
    "compute.trustedImageProjects",
    "compute.vmCanIpForward",
    "compute.vmExternalIpAccess",
    "essentialcontacts.allowedContactDomains",
    "gcp.resourceLocations",
    "iam.allowServiceAccountCredentialLifetimeExtension",
    "iam.allowedPolicyMemberDomains",
    "iam.automaticIamGrantsForDefaultServiceAccounts",
    "iam.disableServiceAccountKeyCreation",
    "iam.disableServiceAccountKeyUpload",
    "sql.restrictAuthorizedNetworks",
    "storage.uniformBucketLevelAccess"
  ]
  required_apis = [
    #    "alloydb",
    #    "appengine",
    #    "appengineflex",
    #    "artifactregistry",
    #    "automl",
    #    "autoscaling",
    "bigquery",
    #    "bigqueryconnection",
    #    "bigquerydatapolicy",
    #    "bigquerydatatransfer",
    #    "bigquerymigration",
    #    "bigqueryreservation",
    #    "bigquerystorage",
    #    "bigtable",
    #    "bigtableadmin",
    #    "bigtabletableadmin",
    #    "cloudbilling",
    "cloudbuild",
    #    "clouddebugger",
    #    "clouddeploy",
    #    "clouderrorreporting",
    #    "cloudfunctions",
    #    "cloudkms",
    #    "cloudresourcemanager",
    #    "cloudscheduler",
    #    "cloudshell",
    "composer",
    #    "compute",
    "datacatalog",
    "dataflow",
    #    "datafusion",
    #    "datalabeling",
    #    "datamigration",
    "dataplex",
    "dataproc",
    "datastore",
    "datastream",
    "datastudio",
    #    "deploymentmanager",
    #    "dlp",
    #    "firestore",
    #    "firestorekeyvisualizer",
    #    "iam",
    #    "iamcredentials",
    #    "logging",
    #    "memcache",
    "metastore",
    #    "ml",
    #    "mlkit",
    #    "monitoring",
    "pubsub",
    #    "pubsublite",
    #    "redis",
    #    "spanner",
    #    "sql-component",
    #    "sqladmin",
    #    "stackdriver",
    "storage",
    #    "storage-api",
    #    "storage-component",
    #    "storagetransfer",
    #    "sts"
  ]
}