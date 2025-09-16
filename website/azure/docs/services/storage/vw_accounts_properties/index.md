--- 
title: vw_accounts_properties
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_accounts_properties
  - storage
  - azure
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure resources using SQL
custom_edit_url: null
image: /img/stackql-azure-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_accounts_properties</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_accounts_properties</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage.vw_accounts_properties" /></td></tr>
</tbody></table>

## Fields

See the SQL Definition (view DDL) for fields returned by this view.

## SQL Definition

<Tabs
defaultValue="Sqlite3"
values={[
{ label: 'Sqlite3', value: 'Sqlite3' },
{ label: 'Postgres', value: 'Postgres' }
]}
>
<TabItem value="Sqlite3">

```sql
SELECT
location as location,
sku as sku,
kind as kind,
identity as identity,
extendedLocation as extended_location,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.primaryEndpoints') as "primary_endpoints",
JSON_EXTRACT(properties, '$.primaryLocation') as "primary_location",
JSON_EXTRACT(properties, '$.statusOfPrimary') as "status_of_primary",
JSON_EXTRACT(properties, '$.lastGeoFailoverTime') as "last_geo_failover_time",
JSON_EXTRACT(properties, '$.secondaryLocation') as "secondary_location",
JSON_EXTRACT(properties, '$.statusOfSecondary') as "status_of_secondary",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.customDomain') as "custom_domain",
JSON_EXTRACT(properties, '$.sasPolicy') as "sas_policy",
JSON_EXTRACT(properties, '$.keyPolicy') as "key_policy",
JSON_EXTRACT(properties, '$.keyCreationTime') as "key_creation_time",
JSON_EXTRACT(properties, '$.secondaryEndpoints') as "secondary_endpoints",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.accessTier') as "access_tier",
JSON_EXTRACT(properties, '$.azureFilesIdentityBasedAuthentication') as "azure_files_identity_based_authentication",
JSON_EXTRACT(properties, '$.supportsHttpsTrafficOnly') as "supports_https_traffic_only",
JSON_EXTRACT(properties, '$.networkAcls') as "network_acls",
JSON_EXTRACT(properties, '$.isSftpEnabled') as "is_sftp_enabled",
JSON_EXTRACT(properties, '$.isLocalUserEnabled') as "is_local_user_enabled",
JSON_EXTRACT(properties, '$.enableExtendedGroups') as "enable_extended_groups",
JSON_EXTRACT(properties, '$.isHnsEnabled') as "is_hns_enabled",
JSON_EXTRACT(properties, '$.geoReplicationStats') as "geo_replication_stats",
JSON_EXTRACT(properties, '$.failoverInProgress') as "failover_in_progress",
JSON_EXTRACT(properties, '$.largeFileSharesState') as "large_file_shares_state",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.routingPreference') as "routing_preference",
JSON_EXTRACT(properties, '$.blobRestoreStatus') as "blob_restore_status",
JSON_EXTRACT(properties, '$.allowBlobPublicAccess') as "allow_blob_public_access",
JSON_EXTRACT(properties, '$.minimumTlsVersion') as "minimum_tls_version",
JSON_EXTRACT(properties, '$.allowSharedKeyAccess') as "allow_shared_key_access",
JSON_EXTRACT(properties, '$.isNfsV3Enabled') as "is_nfs_v3_enabled",
JSON_EXTRACT(properties, '$.allowCrossTenantReplication') as "allow_cross_tenant_replication",
JSON_EXTRACT(properties, '$.defaultToOAuthAuthentication') as "default_to_oauth_authentication",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.immutableStorageWithVersioning') as "immutable_storage_with_versioning",
JSON_EXTRACT(properties, '$.allowedCopyScope') as "allowed_copy_scope",
JSON_EXTRACT(properties, '$.storageAccountSkuConversionStatus') as "storage_account_sku_conversion_status",
JSON_EXTRACT(properties, '$.dnsEndpointType') as "dns_endpoint_type",
JSON_EXTRACT(properties, '$.isSkuConversionBlocked') as "is_sku_conversion_blocked",
JSON_EXTRACT(properties, '$.accountMigrationInProgress') as "account_migration_in_progress",
subscriptionId,
resourceGroupName,
accountName
FROM azure.storage.accounts_properties
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
sku as sku,
kind as kind,
identity as identity,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.primaryEndpoints') as "primary_endpoints",
json_extract_path_text(properties, '$.primaryLocation') as "primary_location",
json_extract_path_text(properties, '$.statusOfPrimary') as "status_of_primary",
json_extract_path_text(properties, '$.lastGeoFailoverTime') as "last_geo_failover_time",
json_extract_path_text(properties, '$.secondaryLocation') as "secondary_location",
json_extract_path_text(properties, '$.statusOfSecondary') as "status_of_secondary",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.customDomain') as "custom_domain",
json_extract_path_text(properties, '$.sasPolicy') as "sas_policy",
json_extract_path_text(properties, '$.keyPolicy') as "key_policy",
json_extract_path_text(properties, '$.keyCreationTime') as "key_creation_time",
json_extract_path_text(properties, '$.secondaryEndpoints') as "secondary_endpoints",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.accessTier') as "access_tier",
json_extract_path_text(properties, '$.azureFilesIdentityBasedAuthentication') as "azure_files_identity_based_authentication",
json_extract_path_text(properties, '$.supportsHttpsTrafficOnly') as "supports_https_traffic_only",
json_extract_path_text(properties, '$.networkAcls') as "network_acls",
json_extract_path_text(properties, '$.isSftpEnabled') as "is_sftp_enabled",
json_extract_path_text(properties, '$.isLocalUserEnabled') as "is_local_user_enabled",
json_extract_path_text(properties, '$.enableExtendedGroups') as "enable_extended_groups",
json_extract_path_text(properties, '$.isHnsEnabled') as "is_hns_enabled",
json_extract_path_text(properties, '$.geoReplicationStats') as "geo_replication_stats",
json_extract_path_text(properties, '$.failoverInProgress') as "failover_in_progress",
json_extract_path_text(properties, '$.largeFileSharesState') as "large_file_shares_state",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.routingPreference') as "routing_preference",
json_extract_path_text(properties, '$.blobRestoreStatus') as "blob_restore_status",
json_extract_path_text(properties, '$.allowBlobPublicAccess') as "allow_blob_public_access",
json_extract_path_text(properties, '$.minimumTlsVersion') as "minimum_tls_version",
json_extract_path_text(properties, '$.allowSharedKeyAccess') as "allow_shared_key_access",
json_extract_path_text(properties, '$.isNfsV3Enabled') as "is_nfs_v3_enabled",
json_extract_path_text(properties, '$.allowCrossTenantReplication') as "allow_cross_tenant_replication",
json_extract_path_text(properties, '$.defaultToOAuthAuthentication') as "default_to_oauth_authentication",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.immutableStorageWithVersioning') as "immutable_storage_with_versioning",
json_extract_path_text(properties, '$.allowedCopyScope') as "allowed_copy_scope",
json_extract_path_text(properties, '$.storageAccountSkuConversionStatus') as "storage_account_sku_conversion_status",
json_extract_path_text(properties, '$.dnsEndpointType') as "dns_endpoint_type",
json_extract_path_text(properties, '$.isSkuConversionBlocked') as "is_sku_conversion_blocked",
json_extract_path_text(properties, '$.accountMigrationInProgress') as "account_migration_in_progress",
subscriptionId,
resourceGroupName,
accountName
FROM azure.storage.accounts_properties
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
