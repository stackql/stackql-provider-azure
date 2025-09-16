--- 
title: vw_managed_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_managed_instances
  - sql
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

Creates, updates, deletes, gets or lists a <code>vw_managed_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_managed_instances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_managed_instances" /></td></tr>
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
tags as tags,
identity as identity,
sku as sku,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.managedInstanceCreateMode') as "managed_instance_create_mode",
JSON_EXTRACT(properties, '$.fullyQualifiedDomainName') as "fully_qualified_domain_name",
JSON_EXTRACT(properties, '$.isGeneralPurposeV2') as "is_general_purpose_v2",
JSON_EXTRACT(properties, '$.administratorLogin') as "administrator_login",
JSON_EXTRACT(properties, '$.administratorLoginPassword') as "administrator_login_password",
JSON_EXTRACT(properties, '$.subnetId') as "subnet_id",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.licenseType') as "license_type",
JSON_EXTRACT(properties, '$.hybridSecondaryUsage') as "hybrid_secondary_usage",
JSON_EXTRACT(properties, '$.hybridSecondaryUsageDetected') as "hybrid_secondary_usage_detected",
JSON_EXTRACT(properties, '$.vCores') as "v_cores",
JSON_EXTRACT(properties, '$.storageSizeInGB') as "storage_size_in_gb",
JSON_EXTRACT(properties, '$.storageIOps') as "storage_i_ops",
JSON_EXTRACT(properties, '$.storageThroughputMBps') as "storage_throughput_mbps",
JSON_EXTRACT(properties, '$.collation') as "collation",
JSON_EXTRACT(properties, '$.dnsZone') as "dns_zone",
JSON_EXTRACT(properties, '$.dnsZonePartner') as "dns_zone_partner",
JSON_EXTRACT(properties, '$.publicDataEndpointEnabled') as "public_data_endpoint_enabled",
JSON_EXTRACT(properties, '$.sourceManagedInstanceId') as "source_managed_instance_id",
JSON_EXTRACT(properties, '$.restorePointInTime') as "restore_point_in_time",
JSON_EXTRACT(properties, '$.proxyOverride') as "proxy_override",
JSON_EXTRACT(properties, '$.timezoneId') as "timezone_id",
JSON_EXTRACT(properties, '$.instancePoolId') as "instance_pool_id",
JSON_EXTRACT(properties, '$.maintenanceConfigurationId') as "maintenance_configuration_id",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.minimalTlsVersion') as "minimal_tls_version",
JSON_EXTRACT(properties, '$.currentBackupStorageRedundancy') as "current_backup_storage_redundancy",
JSON_EXTRACT(properties, '$.requestedBackupStorageRedundancy') as "requested_backup_storage_redundancy",
JSON_EXTRACT(properties, '$.zoneRedundant') as "zone_redundant",
JSON_EXTRACT(properties, '$.primaryUserAssignedIdentityId') as "primary_user_assigned_identity_id",
JSON_EXTRACT(properties, '$.keyId') as "key_id",
JSON_EXTRACT(properties, '$.administrators') as "administrators",
JSON_EXTRACT(properties, '$.servicePrincipal') as "service_principal",
JSON_EXTRACT(properties, '$.virtualClusterId') as "virtual_cluster_id",
JSON_EXTRACT(properties, '$.externalGovernanceStatus') as "external_governance_status",
JSON_EXTRACT(properties, '$.pricingModel') as "pricing_model",
JSON_EXTRACT(properties, '$.createTime') as "create_time",
JSON_EXTRACT(properties, '$.authenticationMetadata') as "authentication_metadata",
JSON_EXTRACT(properties, '$.databaseFormat') as "database_format",
subscriptionId,
resourceGroupName,
managedInstanceName
FROM azure.sql.managed_instances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
sku as sku,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.managedInstanceCreateMode') as "managed_instance_create_mode",
json_extract_path_text(properties, '$.fullyQualifiedDomainName') as "fully_qualified_domain_name",
json_extract_path_text(properties, '$.isGeneralPurposeV2') as "is_general_purpose_v2",
json_extract_path_text(properties, '$.administratorLogin') as "administrator_login",
json_extract_path_text(properties, '$.administratorLoginPassword') as "administrator_login_password",
json_extract_path_text(properties, '$.subnetId') as "subnet_id",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.licenseType') as "license_type",
json_extract_path_text(properties, '$.hybridSecondaryUsage') as "hybrid_secondary_usage",
json_extract_path_text(properties, '$.hybridSecondaryUsageDetected') as "hybrid_secondary_usage_detected",
json_extract_path_text(properties, '$.vCores') as "v_cores",
json_extract_path_text(properties, '$.storageSizeInGB') as "storage_size_in_gb",
json_extract_path_text(properties, '$.storageIOps') as "storage_i_ops",
json_extract_path_text(properties, '$.storageThroughputMBps') as "storage_throughput_mbps",
json_extract_path_text(properties, '$.collation') as "collation",
json_extract_path_text(properties, '$.dnsZone') as "dns_zone",
json_extract_path_text(properties, '$.dnsZonePartner') as "dns_zone_partner",
json_extract_path_text(properties, '$.publicDataEndpointEnabled') as "public_data_endpoint_enabled",
json_extract_path_text(properties, '$.sourceManagedInstanceId') as "source_managed_instance_id",
json_extract_path_text(properties, '$.restorePointInTime') as "restore_point_in_time",
json_extract_path_text(properties, '$.proxyOverride') as "proxy_override",
json_extract_path_text(properties, '$.timezoneId') as "timezone_id",
json_extract_path_text(properties, '$.instancePoolId') as "instance_pool_id",
json_extract_path_text(properties, '$.maintenanceConfigurationId') as "maintenance_configuration_id",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.minimalTlsVersion') as "minimal_tls_version",
json_extract_path_text(properties, '$.currentBackupStorageRedundancy') as "current_backup_storage_redundancy",
json_extract_path_text(properties, '$.requestedBackupStorageRedundancy') as "requested_backup_storage_redundancy",
json_extract_path_text(properties, '$.zoneRedundant') as "zone_redundant",
json_extract_path_text(properties, '$.primaryUserAssignedIdentityId') as "primary_user_assigned_identity_id",
json_extract_path_text(properties, '$.keyId') as "key_id",
json_extract_path_text(properties, '$.administrators') as "administrators",
json_extract_path_text(properties, '$.servicePrincipal') as "service_principal",
json_extract_path_text(properties, '$.virtualClusterId') as "virtual_cluster_id",
json_extract_path_text(properties, '$.externalGovernanceStatus') as "external_governance_status",
json_extract_path_text(properties, '$.pricingModel') as "pricing_model",
json_extract_path_text(properties, '$.createTime') as "create_time",
json_extract_path_text(properties, '$.authenticationMetadata') as "authentication_metadata",
json_extract_path_text(properties, '$.databaseFormat') as "database_format",
subscriptionId,
resourceGroupName,
managedInstanceName
FROM azure.sql.managed_instances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
