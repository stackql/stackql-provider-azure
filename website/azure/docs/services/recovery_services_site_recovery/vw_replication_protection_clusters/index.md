--- 
title: vw_replication_protection_clusters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replication_protection_clusters
  - recovery_services_site_recovery
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

Creates, updates, deletes, gets or lists a <code>vw_replication_protection_clusters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replication_protection_clusters</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.vw_replication_protection_clusters" /></td></tr>
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
type as type,
JSON_EXTRACT(properties, '$.protectionClusterType') as "protection_cluster_type",
JSON_EXTRACT(properties, '$.primaryFabricFriendlyName') as "primary_fabric_friendly_name",
JSON_EXTRACT(properties, '$.primaryFabricProvider') as "primary_fabric_provider",
JSON_EXTRACT(properties, '$.recoveryFabricFriendlyName') as "recovery_fabric_friendly_name",
JSON_EXTRACT(properties, '$.recoveryFabricId') as "recovery_fabric_id",
JSON_EXTRACT(properties, '$.primaryProtectionContainerFriendlyName') as "primary_protection_container_friendly_name",
JSON_EXTRACT(properties, '$.recoveryProtectionContainerFriendlyName') as "recovery_protection_container_friendly_name",
JSON_EXTRACT(properties, '$.protectionState') as "protection_state",
JSON_EXTRACT(properties, '$.protectionStateDescription') as "protection_state_description",
JSON_EXTRACT(properties, '$.activeLocation') as "active_location",
JSON_EXTRACT(properties, '$.testFailoverState') as "test_failover_state",
JSON_EXTRACT(properties, '$.testFailoverStateDescription') as "test_failover_state_description",
JSON_EXTRACT(properties, '$.allowedOperations') as "allowed_operations",
JSON_EXTRACT(properties, '$.replicationHealth') as "replication_health",
JSON_EXTRACT(properties, '$.healthErrors') as "health_errors",
JSON_EXTRACT(properties, '$.lastSuccessfulFailoverTime') as "last_successful_failover_time",
JSON_EXTRACT(properties, '$.lastSuccessfulTestFailoverTime') as "last_successful_test_failover_time",
JSON_EXTRACT(properties, '$.policyFriendlyName') as "policy_friendly_name",
JSON_EXTRACT(properties, '$.currentScenario') as "current_scenario",
JSON_EXTRACT(properties, '$.recoveryContainerId') as "recovery_container_id",
JSON_EXTRACT(properties, '$.agentClusterId') as "agent_cluster_id",
JSON_EXTRACT(properties, '$.clusterFqdn') as "cluster_fqdn",
JSON_EXTRACT(properties, '$.clusterNodeFqdns') as "cluster_node_fqdns",
JSON_EXTRACT(properties, '$.clusterProtectedItemIds') as "cluster_protected_item_ids",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.areAllClusterNodesRegistered') as "are_all_cluster_nodes_registered",
JSON_EXTRACT(properties, '$.clusterRegisteredNodes') as "cluster_registered_nodes",
JSON_EXTRACT(properties, '$.providerSpecificDetails') as "provider_specific_details",
JSON_EXTRACT(properties, '$.sharedDiskProperties') as "shared_disk_properties",
JSON_EXTRACT(properties, '$.policyId') as "policy_id",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
protectionContainerName,
replicationProtectionClusterName
FROM azure.recovery_services_site_recovery.replication_protection_clusters
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.protectionClusterType') as "protection_cluster_type",
json_extract_path_text(properties, '$.primaryFabricFriendlyName') as "primary_fabric_friendly_name",
json_extract_path_text(properties, '$.primaryFabricProvider') as "primary_fabric_provider",
json_extract_path_text(properties, '$.recoveryFabricFriendlyName') as "recovery_fabric_friendly_name",
json_extract_path_text(properties, '$.recoveryFabricId') as "recovery_fabric_id",
json_extract_path_text(properties, '$.primaryProtectionContainerFriendlyName') as "primary_protection_container_friendly_name",
json_extract_path_text(properties, '$.recoveryProtectionContainerFriendlyName') as "recovery_protection_container_friendly_name",
json_extract_path_text(properties, '$.protectionState') as "protection_state",
json_extract_path_text(properties, '$.protectionStateDescription') as "protection_state_description",
json_extract_path_text(properties, '$.activeLocation') as "active_location",
json_extract_path_text(properties, '$.testFailoverState') as "test_failover_state",
json_extract_path_text(properties, '$.testFailoverStateDescription') as "test_failover_state_description",
json_extract_path_text(properties, '$.allowedOperations') as "allowed_operations",
json_extract_path_text(properties, '$.replicationHealth') as "replication_health",
json_extract_path_text(properties, '$.healthErrors') as "health_errors",
json_extract_path_text(properties, '$.lastSuccessfulFailoverTime') as "last_successful_failover_time",
json_extract_path_text(properties, '$.lastSuccessfulTestFailoverTime') as "last_successful_test_failover_time",
json_extract_path_text(properties, '$.policyFriendlyName') as "policy_friendly_name",
json_extract_path_text(properties, '$.currentScenario') as "current_scenario",
json_extract_path_text(properties, '$.recoveryContainerId') as "recovery_container_id",
json_extract_path_text(properties, '$.agentClusterId') as "agent_cluster_id",
json_extract_path_text(properties, '$.clusterFqdn') as "cluster_fqdn",
json_extract_path_text(properties, '$.clusterNodeFqdns') as "cluster_node_fqdns",
json_extract_path_text(properties, '$.clusterProtectedItemIds') as "cluster_protected_item_ids",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.areAllClusterNodesRegistered') as "are_all_cluster_nodes_registered",
json_extract_path_text(properties, '$.clusterRegisteredNodes') as "cluster_registered_nodes",
json_extract_path_text(properties, '$.providerSpecificDetails') as "provider_specific_details",
json_extract_path_text(properties, '$.sharedDiskProperties') as "shared_disk_properties",
json_extract_path_text(properties, '$.policyId') as "policy_id",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
protectionContainerName,
replicationProtectionClusterName
FROM azure.recovery_services_site_recovery.replication_protection_clusters
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
