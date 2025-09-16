--- 
title: vw_device_capacity_info_device_capacity_info
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_device_capacity_info_device_capacity_info
  - data_box_edge
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

Creates, updates, deletes, gets or lists a <code>vw_device_capacity_info_device_capacity_info</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_device_capacity_info_device_capacity_info</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_box_edge.vw_device_capacity_info_device_capacity_info" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.timeStamp') as "time_stamp",
JSON_EXTRACT(properties, '$.clusterStorageCapacityInfo') as "cluster_storage_capacity_info",
JSON_EXTRACT(properties, '$.clusterComputeCapacityInfo') as "cluster_compute_capacity_info",
JSON_EXTRACT(properties, '$.nodeCapacityInfos') as "node_capacity_infos",
subscriptionId,
resourceGroupName,
deviceName
FROM azure.data_box_edge.device_capacity_info_device_capacity_info
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.timeStamp') as "time_stamp",
json_extract_path_text(properties, '$.clusterStorageCapacityInfo') as "cluster_storage_capacity_info",
json_extract_path_text(properties, '$.clusterComputeCapacityInfo') as "cluster_compute_capacity_info",
json_extract_path_text(properties, '$.nodeCapacityInfos') as "node_capacity_infos",
subscriptionId,
resourceGroupName,
deviceName
FROM azure.data_box_edge.device_capacity_info_device_capacity_info
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
</Tabs>
