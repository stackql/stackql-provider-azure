--- 
title: vw_kubernetes_clusters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_kubernetes_clusters
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

Creates, updates, deletes, gets or lists a <code>vw_kubernetes_clusters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_kubernetes_clusters</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.nexus.vw_kubernetes_clusters" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.aadConfiguration') as "aad_configuration",
JSON_EXTRACT(properties, '$.administratorConfiguration') as "administrator_configuration",
JSON_EXTRACT(properties, '$.attachedNetworkIds') as "attached_network_ids",
JSON_EXTRACT(properties, '$.availableUpgrades') as "available_upgrades",
JSON_EXTRACT(properties, '$.clusterId') as "cluster_id",
JSON_EXTRACT(properties, '$.connectedClusterId') as "connected_cluster_id",
JSON_EXTRACT(properties, '$.controlPlaneKubernetesVersion') as "control_plane_kubernetes_version",
JSON_EXTRACT(properties, '$.controlPlaneNodeConfiguration') as "control_plane_node_configuration",
JSON_EXTRACT(properties, '$.detailedStatus') as "detailed_status",
JSON_EXTRACT(properties, '$.detailedStatusMessage') as "detailed_status_message",
JSON_EXTRACT(properties, '$.featureStatuses') as "feature_statuses",
JSON_EXTRACT(properties, '$.initialAgentPoolConfigurations') as "initial_agent_pool_configurations",
JSON_EXTRACT(properties, '$.kubernetesVersion') as "kubernetes_version",
JSON_EXTRACT(properties, '$.managedResourceGroupConfiguration') as "managed_resource_group_configuration",
JSON_EXTRACT(properties, '$.networkConfiguration') as "network_configuration",
JSON_EXTRACT(properties, '$.nodes') as "nodes",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
kubernetesClusterName
FROM azure.nexus.kubernetes_clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.aadConfiguration') as "aad_configuration",
json_extract_path_text(properties, '$.administratorConfiguration') as "administrator_configuration",
json_extract_path_text(properties, '$.attachedNetworkIds') as "attached_network_ids",
json_extract_path_text(properties, '$.availableUpgrades') as "available_upgrades",
json_extract_path_text(properties, '$.clusterId') as "cluster_id",
json_extract_path_text(properties, '$.connectedClusterId') as "connected_cluster_id",
json_extract_path_text(properties, '$.controlPlaneKubernetesVersion') as "control_plane_kubernetes_version",
json_extract_path_text(properties, '$.controlPlaneNodeConfiguration') as "control_plane_node_configuration",
json_extract_path_text(properties, '$.detailedStatus') as "detailed_status",
json_extract_path_text(properties, '$.detailedStatusMessage') as "detailed_status_message",
json_extract_path_text(properties, '$.featureStatuses') as "feature_statuses",
json_extract_path_text(properties, '$.initialAgentPoolConfigurations') as "initial_agent_pool_configurations",
json_extract_path_text(properties, '$.kubernetesVersion') as "kubernetes_version",
json_extract_path_text(properties, '$.managedResourceGroupConfiguration') as "managed_resource_group_configuration",
json_extract_path_text(properties, '$.networkConfiguration') as "network_configuration",
json_extract_path_text(properties, '$.nodes') as "nodes",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
kubernetesClusterName
FROM azure.nexus.kubernetes_clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
