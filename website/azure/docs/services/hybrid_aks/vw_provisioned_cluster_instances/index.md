--- 
title: vw_provisioned_cluster_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_provisioned_cluster_instances
  - hybrid_aks
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

Creates, updates, deletes, gets or lists a <code>vw_provisioned_cluster_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_provisioned_cluster_instances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_aks.vw_provisioned_cluster_instances" /></td></tr>
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
extendedLocation as extended_location,
JSON_EXTRACT(properties, '$.linuxProfile') as "linux_profile",
JSON_EXTRACT(properties, '$.controlPlane') as "control_plane",
JSON_EXTRACT(properties, '$.kubernetesVersion') as "kubernetes_version",
JSON_EXTRACT(properties, '$.networkProfile') as "network_profile",
JSON_EXTRACT(properties, '$.storageProfile') as "storage_profile",
JSON_EXTRACT(properties, '$.clusterVMAccessProfile') as "cluster_vm_access_profile",
JSON_EXTRACT(properties, '$.agentPoolProfiles') as "agent_pool_profiles",
JSON_EXTRACT(properties, '$.cloudProviderProfile') as "cloud_provider_profile",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.licenseProfile') as "license_profile",
JSON_EXTRACT(properties, '$.autoScalerProfile') as "auto_scaler_profile",
connectedClusterResourceUri
FROM azure.hybrid_aks.provisioned_cluster_instances
WHERE connectedClusterResourceUri = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
extendedLocation as extended_location,
json_extract_path_text(properties, '$.linuxProfile') as "linux_profile",
json_extract_path_text(properties, '$.controlPlane') as "control_plane",
json_extract_path_text(properties, '$.kubernetesVersion') as "kubernetes_version",
json_extract_path_text(properties, '$.networkProfile') as "network_profile",
json_extract_path_text(properties, '$.storageProfile') as "storage_profile",
json_extract_path_text(properties, '$.clusterVMAccessProfile') as "cluster_vm_access_profile",
json_extract_path_text(properties, '$.agentPoolProfiles') as "agent_pool_profiles",
json_extract_path_text(properties, '$.cloudProviderProfile') as "cloud_provider_profile",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.licenseProfile') as "license_profile",
json_extract_path_text(properties, '$.autoScalerProfile') as "auto_scaler_profile",
connectedClusterResourceUri
FROM azure.hybrid_aks.provisioned_cluster_instances
WHERE connectedClusterResourceUri = 'replace-me';
```

</TabItem>
</Tabs>
