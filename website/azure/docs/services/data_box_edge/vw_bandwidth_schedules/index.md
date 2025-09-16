--- 
title: vw_bandwidth_schedules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_bandwidth_schedules
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

Creates, updates, deletes, gets or lists a <code>vw_bandwidth_schedules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_bandwidth_schedules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_box_edge.vw_bandwidth_schedules" /></td></tr>
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
JSON_EXTRACT(properties, '$.start') as "start",
JSON_EXTRACT(properties, '$.stop') as "stop",
JSON_EXTRACT(properties, '$.rateInMbps') as "rate_in_mbps",
JSON_EXTRACT(properties, '$.days') as "days",
subscriptionId,
resourceGroupName,
deviceName,
name
FROM azure.data_box_edge.bandwidth_schedules
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
json_extract_path_text(properties, '$.start') as "start",
json_extract_path_text(properties, '$.stop') as "stop",
json_extract_path_text(properties, '$.rateInMbps') as "rate_in_mbps",
json_extract_path_text(properties, '$.days') as "days",
subscriptionId,
resourceGroupName,
deviceName,
name
FROM azure.data_box_edge.bandwidth_schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
</Tabs>
