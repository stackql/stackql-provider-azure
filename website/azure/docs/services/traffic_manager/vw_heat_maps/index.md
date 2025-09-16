--- 
title: vw_heat_maps
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_heat_maps
  - traffic_manager
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

Creates, updates, deletes, gets or lists a <code>vw_heat_maps</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_heat_maps</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.traffic_manager.vw_heat_maps" /></td></tr>
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
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.endpoints') as "endpoints",
JSON_EXTRACT(properties, '$.trafficFlows') as "traffic_flows",
subscriptionId,
resourceGroupName,
profileName,
heatMapType
FROM azure.traffic_manager.heat_maps
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me' AND heatMapType = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.endpoints') as "endpoints",
json_extract_path_text(properties, '$.trafficFlows') as "traffic_flows",
subscriptionId,
resourceGroupName,
profileName,
heatMapType
FROM azure.traffic_manager.heat_maps
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me' AND heatMapType = 'replace-me';
```

</TabItem>
</Tabs>
