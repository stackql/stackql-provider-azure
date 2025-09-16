--- 
title: vw_agent_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_agent_pools
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

Creates, updates, deletes, gets or lists a <code>vw_agent_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_agent_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_aks.vw_agent_pools" /></td></tr>
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
tags as tags,
extendedLocation as extended_location,
JSON_EXTRACT(properties, '$.osType') as "os_type",
JSON_EXTRACT(properties, '$.osSKU') as "os_sku",
JSON_EXTRACT(properties, '$.nodeLabels') as "node_labels",
JSON_EXTRACT(properties, '$.nodeTaints') as "node_taints",
JSON_EXTRACT(properties, '$.maxCount') as "max_count",
JSON_EXTRACT(properties, '$.minCount') as "min_count",
JSON_EXTRACT(properties, '$.enableAutoScaling') as "enable_auto_scaling",
JSON_EXTRACT(properties, '$.maxPods') as "max_pods",
JSON_EXTRACT(properties, '$.count') as "count",
JSON_EXTRACT(properties, '$.vmSize') as "vm_size",
JSON_EXTRACT(properties, '$.kubernetesVersion') as "kubernetes_version",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.status') as "status",
connectedClusterResourceUri,
agentPoolName
FROM azure.hybrid_aks.agent_pools
WHERE connectedClusterResourceUri = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
tags as tags,
extendedLocation as extended_location,
json_extract_path_text(properties, '$.osType') as "os_type",
json_extract_path_text(properties, '$.osSKU') as "os_sku",
json_extract_path_text(properties, '$.nodeLabels') as "node_labels",
json_extract_path_text(properties, '$.nodeTaints') as "node_taints",
json_extract_path_text(properties, '$.maxCount') as "max_count",
json_extract_path_text(properties, '$.minCount') as "min_count",
json_extract_path_text(properties, '$.enableAutoScaling') as "enable_auto_scaling",
json_extract_path_text(properties, '$.maxPods') as "max_pods",
json_extract_path_text(properties, '$.count') as "count",
json_extract_path_text(properties, '$.vmSize') as "vm_size",
json_extract_path_text(properties, '$.kubernetesVersion') as "kubernetes_version",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.status') as "status",
connectedClusterResourceUri,
agentPoolName
FROM azure.hybrid_aks.agent_pools
WHERE connectedClusterResourceUri = 'replace-me';
```

</TabItem>
</Tabs>
