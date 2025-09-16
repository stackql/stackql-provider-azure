--- 
title: vw_containers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_containers
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

Creates, updates, deletes, gets or lists a <code>vw_containers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_containers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_box_edge.vw_containers" /></td></tr>
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
JSON_EXTRACT(properties, '$.containerStatus') as "container_status",
JSON_EXTRACT(properties, '$.dataFormat') as "data_format",
JSON_EXTRACT(properties, '$.refreshDetails') as "refresh_details",
JSON_EXTRACT(properties, '$.createdDateTime') as "created_date_time",
subscriptionId,
resourceGroupName,
deviceName,
storageAccountName,
containerName
FROM azure.data_box_edge.containers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deviceName = 'replace-me' AND storageAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.containerStatus') as "container_status",
json_extract_path_text(properties, '$.dataFormat') as "data_format",
json_extract_path_text(properties, '$.refreshDetails') as "refresh_details",
json_extract_path_text(properties, '$.createdDateTime') as "created_date_time",
subscriptionId,
resourceGroupName,
deviceName,
storageAccountName,
containerName
FROM azure.data_box_edge.containers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deviceName = 'replace-me' AND storageAccountName = 'replace-me';
```

</TabItem>
</Tabs>
