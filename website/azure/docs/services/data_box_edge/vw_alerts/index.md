--- 
title: vw_alerts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_alerts
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

Creates, updates, deletes, gets or lists a <code>vw_alerts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_alerts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_box_edge.vw_alerts" /></td></tr>
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
JSON_EXTRACT(properties, '$.title') as "title",
JSON_EXTRACT(properties, '$.alertType') as "alert_type",
JSON_EXTRACT(properties, '$.appearedAtDateTime') as "appeared_at_date_time",
JSON_EXTRACT(properties, '$.recommendation') as "recommendation",
JSON_EXTRACT(properties, '$.severity') as "severity",
JSON_EXTRACT(properties, '$.errorDetails') as "error_details",
JSON_EXTRACT(properties, '$.detailedInformation') as "detailed_information",
subscriptionId,
resourceGroupName,
deviceName,
name
FROM azure.data_box_edge.alerts
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
json_extract_path_text(properties, '$.title') as "title",
json_extract_path_text(properties, '$.alertType') as "alert_type",
json_extract_path_text(properties, '$.appearedAtDateTime') as "appeared_at_date_time",
json_extract_path_text(properties, '$.recommendation') as "recommendation",
json_extract_path_text(properties, '$.severity') as "severity",
json_extract_path_text(properties, '$.errorDetails') as "error_details",
json_extract_path_text(properties, '$.detailedInformation') as "detailed_information",
subscriptionId,
resourceGroupName,
deviceName,
name
FROM azure.data_box_edge.alerts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
</Tabs>
