--- 
title: vw_clusters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_clusters
  - nexus
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

Creates, updates, deletes, gets or lists a <code>vw_clusters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_clusters</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.nexus.vw_clusters" /></td></tr>
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
extendedLocation as extended_location,
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.aggregatorOrSingleRackDefinition') as "aggregator_or_single_rack_definition",
JSON_EXTRACT(properties, '$.analyticsWorkspaceId') as "analytics_workspace_id",
JSON_EXTRACT(properties, '$.availableUpgradeVersions') as "available_upgrade_versions",
JSON_EXTRACT(properties, '$.clusterCapacity') as "cluster_capacity",
JSON_EXTRACT(properties, '$.clusterConnectionStatus') as "cluster_connection_status",
JSON_EXTRACT(properties, '$.clusterExtendedLocation') as "cluster_extended_location",
JSON_EXTRACT(properties, '$.clusterLocation') as "cluster_location",
JSON_EXTRACT(properties, '$.clusterManagerConnectionStatus') as "cluster_manager_connection_status",
JSON_EXTRACT(properties, '$.clusterManagerId') as "cluster_manager_id",
JSON_EXTRACT(properties, '$.clusterServicePrincipal') as "cluster_service_principal",
JSON_EXTRACT(properties, '$.clusterType') as "cluster_type",
JSON_EXTRACT(properties, '$.clusterVersion') as "cluster_version",
JSON_EXTRACT(properties, '$.commandOutputSettings') as "command_output_settings",
JSON_EXTRACT(properties, '$.computeDeploymentThreshold') as "compute_deployment_threshold",
JSON_EXTRACT(properties, '$.computeRackDefinitions') as "compute_rack_definitions",
JSON_EXTRACT(properties, '$.detailedStatus') as "detailed_status",
JSON_EXTRACT(properties, '$.detailedStatusMessage') as "detailed_status_message",
JSON_EXTRACT(properties, '$.hybridAksExtendedLocation') as "hybrid_aks_extended_location",
JSON_EXTRACT(properties, '$.managedResourceGroupConfiguration') as "managed_resource_group_configuration",
JSON_EXTRACT(properties, '$.manualActionCount') as "manual_action_count",
JSON_EXTRACT(properties, '$.networkFabricId') as "network_fabric_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.runtimeProtectionConfiguration') as "runtime_protection_configuration",
JSON_EXTRACT(properties, '$.secretArchive') as "secret_archive",
JSON_EXTRACT(properties, '$.supportExpiryDate') as "support_expiry_date",
JSON_EXTRACT(properties, '$.updateStrategy') as "update_strategy",
JSON_EXTRACT(properties, '$.workloadResourceIds') as "workload_resource_ids",
subscriptionId,
resourceGroupName,
clusterName
FROM azure.nexus.clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.aggregatorOrSingleRackDefinition') as "aggregator_or_single_rack_definition",
json_extract_path_text(properties, '$.analyticsWorkspaceId') as "analytics_workspace_id",
json_extract_path_text(properties, '$.availableUpgradeVersions') as "available_upgrade_versions",
json_extract_path_text(properties, '$.clusterCapacity') as "cluster_capacity",
json_extract_path_text(properties, '$.clusterConnectionStatus') as "cluster_connection_status",
json_extract_path_text(properties, '$.clusterExtendedLocation') as "cluster_extended_location",
json_extract_path_text(properties, '$.clusterLocation') as "cluster_location",
json_extract_path_text(properties, '$.clusterManagerConnectionStatus') as "cluster_manager_connection_status",
json_extract_path_text(properties, '$.clusterManagerId') as "cluster_manager_id",
json_extract_path_text(properties, '$.clusterServicePrincipal') as "cluster_service_principal",
json_extract_path_text(properties, '$.clusterType') as "cluster_type",
json_extract_path_text(properties, '$.clusterVersion') as "cluster_version",
json_extract_path_text(properties, '$.commandOutputSettings') as "command_output_settings",
json_extract_path_text(properties, '$.computeDeploymentThreshold') as "compute_deployment_threshold",
json_extract_path_text(properties, '$.computeRackDefinitions') as "compute_rack_definitions",
json_extract_path_text(properties, '$.detailedStatus') as "detailed_status",
json_extract_path_text(properties, '$.detailedStatusMessage') as "detailed_status_message",
json_extract_path_text(properties, '$.hybridAksExtendedLocation') as "hybrid_aks_extended_location",
json_extract_path_text(properties, '$.managedResourceGroupConfiguration') as "managed_resource_group_configuration",
json_extract_path_text(properties, '$.manualActionCount') as "manual_action_count",
json_extract_path_text(properties, '$.networkFabricId') as "network_fabric_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.runtimeProtectionConfiguration') as "runtime_protection_configuration",
json_extract_path_text(properties, '$.secretArchive') as "secret_archive",
json_extract_path_text(properties, '$.supportExpiryDate') as "support_expiry_date",
json_extract_path_text(properties, '$.updateStrategy') as "update_strategy",
json_extract_path_text(properties, '$.workloadResourceIds') as "workload_resource_ids",
subscriptionId,
resourceGroupName,
clusterName
FROM azure.nexus.clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
