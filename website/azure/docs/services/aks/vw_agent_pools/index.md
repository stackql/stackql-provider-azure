--- 
title: vw_agent_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_agent_pools
  - aks
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

Creates, updates, deletes, gets or lists a <code>vw_agent_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_agent_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.aks.vw_agent_pools" /></td></tr>
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
JSON_EXTRACT(properties, '$.count') as "count",
JSON_EXTRACT(properties, '$.vmSize') as "vm_size",
JSON_EXTRACT(properties, '$.osDiskSizeGB') as "os_disk_size_gb",
JSON_EXTRACT(properties, '$.osDiskType') as "os_disk_type",
JSON_EXTRACT(properties, '$.kubeletDiskType') as "kubelet_disk_type",
JSON_EXTRACT(properties, '$.workloadRuntime') as "workload_runtime",
JSON_EXTRACT(properties, '$.vnetSubnetID') as "vnet_subnet_id",
JSON_EXTRACT(properties, '$.podSubnetID') as "pod_subnet_id",
JSON_EXTRACT(properties, '$.maxPods') as "max_pods",
JSON_EXTRACT(properties, '$.osType') as "os_type",
JSON_EXTRACT(properties, '$.osSKU') as "os_sku",
JSON_EXTRACT(properties, '$.maxCount') as "max_count",
JSON_EXTRACT(properties, '$.minCount') as "min_count",
JSON_EXTRACT(properties, '$.enableAutoScaling') as "enable_auto_scaling",
JSON_EXTRACT(properties, '$.scaleDownMode') as "scale_down_mode",
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.mode') as "mode",
JSON_EXTRACT(properties, '$.orchestratorVersion') as "orchestrator_version",
JSON_EXTRACT(properties, '$.currentOrchestratorVersion') as "current_orchestrator_version",
JSON_EXTRACT(properties, '$.nodeImageVersion') as "node_image_version",
JSON_EXTRACT(properties, '$.upgradeSettings') as "upgrade_settings",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.powerState') as "power_state",
JSON_EXTRACT(properties, '$.availabilityZones') as "availability_zones",
JSON_EXTRACT(properties, '$.enableNodePublicIP') as "enable_node_public_ip",
JSON_EXTRACT(properties, '$.nodePublicIPPrefixID') as "node_public_ip_prefix_id",
JSON_EXTRACT(properties, '$.scaleSetPriority') as "scale_set_priority",
JSON_EXTRACT(properties, '$.scaleSetEvictionPolicy') as "scale_set_eviction_policy",
JSON_EXTRACT(properties, '$.spotMaxPrice') as "spot_max_price",
JSON_EXTRACT(properties, '$.tags') as "tags",
JSON_EXTRACT(properties, '$.nodeLabels') as "node_labels",
JSON_EXTRACT(properties, '$.nodeTaints') as "node_taints",
JSON_EXTRACT(properties, '$.proximityPlacementGroupID') as "proximity_placement_group_id",
JSON_EXTRACT(properties, '$.kubeletConfig') as "kubelet_config",
JSON_EXTRACT(properties, '$.linuxOSConfig') as "linux_os_config",
JSON_EXTRACT(properties, '$.enableEncryptionAtHost') as "enable_encryption_at_host",
JSON_EXTRACT(properties, '$.enableUltraSSD') as "enable_ultra_ssd",
JSON_EXTRACT(properties, '$.enableFIPS') as "enable_fips",
JSON_EXTRACT(properties, '$.gpuInstanceProfile') as "gpu_instance_profile",
JSON_EXTRACT(properties, '$.creationData') as "creation_data",
JSON_EXTRACT(properties, '$.capacityReservationGroupID') as "capacity_reservation_group_id",
JSON_EXTRACT(properties, '$.hostGroupID') as "host_group_id",
JSON_EXTRACT(properties, '$.networkProfile') as "network_profile",
JSON_EXTRACT(properties, '$.windowsProfile') as "windows_profile",
JSON_EXTRACT(properties, '$.securityProfile') as "security_profile",
subscriptionId,
resourceGroupName,
resourceName,
agentPoolName
FROM azure.aks.agent_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.count') as "count",
json_extract_path_text(properties, '$.vmSize') as "vm_size",
json_extract_path_text(properties, '$.osDiskSizeGB') as "os_disk_size_gb",
json_extract_path_text(properties, '$.osDiskType') as "os_disk_type",
json_extract_path_text(properties, '$.kubeletDiskType') as "kubelet_disk_type",
json_extract_path_text(properties, '$.workloadRuntime') as "workload_runtime",
json_extract_path_text(properties, '$.vnetSubnetID') as "vnet_subnet_id",
json_extract_path_text(properties, '$.podSubnetID') as "pod_subnet_id",
json_extract_path_text(properties, '$.maxPods') as "max_pods",
json_extract_path_text(properties, '$.osType') as "os_type",
json_extract_path_text(properties, '$.osSKU') as "os_sku",
json_extract_path_text(properties, '$.maxCount') as "max_count",
json_extract_path_text(properties, '$.minCount') as "min_count",
json_extract_path_text(properties, '$.enableAutoScaling') as "enable_auto_scaling",
json_extract_path_text(properties, '$.scaleDownMode') as "scale_down_mode",
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.mode') as "mode",
json_extract_path_text(properties, '$.orchestratorVersion') as "orchestrator_version",
json_extract_path_text(properties, '$.currentOrchestratorVersion') as "current_orchestrator_version",
json_extract_path_text(properties, '$.nodeImageVersion') as "node_image_version",
json_extract_path_text(properties, '$.upgradeSettings') as "upgrade_settings",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.powerState') as "power_state",
json_extract_path_text(properties, '$.availabilityZones') as "availability_zones",
json_extract_path_text(properties, '$.enableNodePublicIP') as "enable_node_public_ip",
json_extract_path_text(properties, '$.nodePublicIPPrefixID') as "node_public_ip_prefix_id",
json_extract_path_text(properties, '$.scaleSetPriority') as "scale_set_priority",
json_extract_path_text(properties, '$.scaleSetEvictionPolicy') as "scale_set_eviction_policy",
json_extract_path_text(properties, '$.spotMaxPrice') as "spot_max_price",
json_extract_path_text(properties, '$.tags') as "tags",
json_extract_path_text(properties, '$.nodeLabels') as "node_labels",
json_extract_path_text(properties, '$.nodeTaints') as "node_taints",
json_extract_path_text(properties, '$.proximityPlacementGroupID') as "proximity_placement_group_id",
json_extract_path_text(properties, '$.kubeletConfig') as "kubelet_config",
json_extract_path_text(properties, '$.linuxOSConfig') as "linux_os_config",
json_extract_path_text(properties, '$.enableEncryptionAtHost') as "enable_encryption_at_host",
json_extract_path_text(properties, '$.enableUltraSSD') as "enable_ultra_ssd",
json_extract_path_text(properties, '$.enableFIPS') as "enable_fips",
json_extract_path_text(properties, '$.gpuInstanceProfile') as "gpu_instance_profile",
json_extract_path_text(properties, '$.creationData') as "creation_data",
json_extract_path_text(properties, '$.capacityReservationGroupID') as "capacity_reservation_group_id",
json_extract_path_text(properties, '$.hostGroupID') as "host_group_id",
json_extract_path_text(properties, '$.networkProfile') as "network_profile",
json_extract_path_text(properties, '$.windowsProfile') as "windows_profile",
json_extract_path_text(properties, '$.securityProfile') as "security_profile",
subscriptionId,
resourceGroupName,
resourceName,
agentPoolName
FROM azure.aks.agent_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
