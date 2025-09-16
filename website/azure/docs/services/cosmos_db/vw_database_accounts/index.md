--- 
title: vw_database_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_database_accounts
  - cosmos_db
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

Creates, updates, deletes, gets or lists a <code>vw_database_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_database_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.vw_database_accounts" /></td></tr>
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
id as id,
name as name,
location as location,
kind as kind,
identity as identity,
systemData as system_data,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.documentEndpoint') as "document_endpoint",
JSON_EXTRACT(properties, '$.databaseAccountOfferType') as "database_account_offer_type",
JSON_EXTRACT(properties, '$.ipRules') as "ip_rules",
JSON_EXTRACT(properties, '$.isVirtualNetworkFilterEnabled') as "is_virtual_network_filter_enabled",
JSON_EXTRACT(properties, '$.enableAutomaticFailover') as "enable_automatic_failover",
JSON_EXTRACT(properties, '$.consistencyPolicy') as "consistency_policy",
JSON_EXTRACT(properties, '$.capabilities') as "capabilities",
JSON_EXTRACT(properties, '$.writeLocations') as "write_locations",
JSON_EXTRACT(properties, '$.readLocations') as "read_locations",
JSON_EXTRACT(properties, '$.locations') as "locations",
JSON_EXTRACT(properties, '$.failoverPolicies') as "failover_policies",
JSON_EXTRACT(properties, '$.virtualNetworkRules') as "virtual_network_rules",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.enableMultipleWriteLocations') as "enable_multiple_write_locations",
JSON_EXTRACT(properties, '$.enableCassandraConnector') as "enable_cassandra_connector",
JSON_EXTRACT(properties, '$.connectorOffer') as "connector_offer",
JSON_EXTRACT(properties, '$.disableKeyBasedMetadataWriteAccess') as "disable_key_based_metadata_write_access",
JSON_EXTRACT(properties, '$.keyVaultKeyUri') as "key_vault_key_uri",
JSON_EXTRACT(properties, '$.defaultIdentity') as "default_identity",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.enableFreeTier') as "enable_free_tier",
JSON_EXTRACT(properties, '$.apiProperties') as "api_properties",
JSON_EXTRACT(properties, '$.enableAnalyticalStorage') as "enable_analytical_storage",
JSON_EXTRACT(properties, '$.analyticalStorageConfiguration') as "analytical_storage_configuration",
JSON_EXTRACT(properties, '$.instanceId') as "instance_id",
JSON_EXTRACT(properties, '$.createMode') as "create_mode",
JSON_EXTRACT(properties, '$.restoreParameters') as "restore_parameters",
JSON_EXTRACT(properties, '$.backupPolicy') as "backup_policy",
JSON_EXTRACT(properties, '$.cors') as "cors",
JSON_EXTRACT(properties, '$.networkAclBypass') as "network_acl_bypass",
JSON_EXTRACT(properties, '$.networkAclBypassResourceIds') as "network_acl_bypass_resource_ids",
JSON_EXTRACT(properties, '$.diagnosticLogSettings') as "diagnostic_log_settings",
JSON_EXTRACT(properties, '$.disableLocalAuth') as "disable_local_auth",
JSON_EXTRACT(properties, '$.capacity') as "capacity",
JSON_EXTRACT(properties, '$.capacityMode') as "capacity_mode",
JSON_EXTRACT(properties, '$.capacityModeChangeTransitionState') as "capacity_mode_change_transition_state",
JSON_EXTRACT(properties, '$.enableMaterializedViews') as "enable_materialized_views",
JSON_EXTRACT(properties, '$.keysMetadata') as "keys_metadata",
JSON_EXTRACT(properties, '$.enablePartitionMerge') as "enable_partition_merge",
JSON_EXTRACT(properties, '$.enableBurstCapacity') as "enable_burst_capacity",
JSON_EXTRACT(properties, '$.minimalTlsVersion') as "minimal_tls_version",
JSON_EXTRACT(properties, '$.customerManagedKeyStatus') as "customer_managed_key_status",
JSON_EXTRACT(properties, '$.enablePriorityBasedExecution') as "enable_priority_based_execution",
JSON_EXTRACT(properties, '$.defaultPriorityLevel') as "default_priority_level",
JSON_EXTRACT(properties, '$.enablePerRegionPerPartitionAutoscale') as "enable_per_region_per_partition_autoscale",
subscriptionId,
resourceGroupName,
accountName
FROM azure.cosmos_db.database_accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
kind as kind,
identity as identity,
systemData as system_data,
type as type,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.documentEndpoint') as "document_endpoint",
json_extract_path_text(properties, '$.databaseAccountOfferType') as "database_account_offer_type",
json_extract_path_text(properties, '$.ipRules') as "ip_rules",
json_extract_path_text(properties, '$.isVirtualNetworkFilterEnabled') as "is_virtual_network_filter_enabled",
json_extract_path_text(properties, '$.enableAutomaticFailover') as "enable_automatic_failover",
json_extract_path_text(properties, '$.consistencyPolicy') as "consistency_policy",
json_extract_path_text(properties, '$.capabilities') as "capabilities",
json_extract_path_text(properties, '$.writeLocations') as "write_locations",
json_extract_path_text(properties, '$.readLocations') as "read_locations",
json_extract_path_text(properties, '$.locations') as "locations",
json_extract_path_text(properties, '$.failoverPolicies') as "failover_policies",
json_extract_path_text(properties, '$.virtualNetworkRules') as "virtual_network_rules",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.enableMultipleWriteLocations') as "enable_multiple_write_locations",
json_extract_path_text(properties, '$.enableCassandraConnector') as "enable_cassandra_connector",
json_extract_path_text(properties, '$.connectorOffer') as "connector_offer",
json_extract_path_text(properties, '$.disableKeyBasedMetadataWriteAccess') as "disable_key_based_metadata_write_access",
json_extract_path_text(properties, '$.keyVaultKeyUri') as "key_vault_key_uri",
json_extract_path_text(properties, '$.defaultIdentity') as "default_identity",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.enableFreeTier') as "enable_free_tier",
json_extract_path_text(properties, '$.apiProperties') as "api_properties",
json_extract_path_text(properties, '$.enableAnalyticalStorage') as "enable_analytical_storage",
json_extract_path_text(properties, '$.analyticalStorageConfiguration') as "analytical_storage_configuration",
json_extract_path_text(properties, '$.instanceId') as "instance_id",
json_extract_path_text(properties, '$.createMode') as "create_mode",
json_extract_path_text(properties, '$.restoreParameters') as "restore_parameters",
json_extract_path_text(properties, '$.backupPolicy') as "backup_policy",
json_extract_path_text(properties, '$.cors') as "cors",
json_extract_path_text(properties, '$.networkAclBypass') as "network_acl_bypass",
json_extract_path_text(properties, '$.networkAclBypassResourceIds') as "network_acl_bypass_resource_ids",
json_extract_path_text(properties, '$.diagnosticLogSettings') as "diagnostic_log_settings",
json_extract_path_text(properties, '$.disableLocalAuth') as "disable_local_auth",
json_extract_path_text(properties, '$.capacity') as "capacity",
json_extract_path_text(properties, '$.capacityMode') as "capacity_mode",
json_extract_path_text(properties, '$.capacityModeChangeTransitionState') as "capacity_mode_change_transition_state",
json_extract_path_text(properties, '$.enableMaterializedViews') as "enable_materialized_views",
json_extract_path_text(properties, '$.keysMetadata') as "keys_metadata",
json_extract_path_text(properties, '$.enablePartitionMerge') as "enable_partition_merge",
json_extract_path_text(properties, '$.enableBurstCapacity') as "enable_burst_capacity",
json_extract_path_text(properties, '$.minimalTlsVersion') as "minimal_tls_version",
json_extract_path_text(properties, '$.customerManagedKeyStatus') as "customer_managed_key_status",
json_extract_path_text(properties, '$.enablePriorityBasedExecution') as "enable_priority_based_execution",
json_extract_path_text(properties, '$.defaultPriorityLevel') as "default_priority_level",
json_extract_path_text(properties, '$.enablePerRegionPerPartitionAutoscale') as "enable_per_region_per_partition_autoscale",
subscriptionId,
resourceGroupName,
accountName
FROM azure.cosmos_db.database_accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
