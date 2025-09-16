--- 
title: vw_activity_log_alerts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_activity_log_alerts
  - monitor
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

Creates, updates, deletes, gets or lists a <code>vw_activity_log_alerts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_activity_log_alerts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.monitor.vw_activity_log_alerts" /></td></tr>
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
location as location,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.scopes') as "scopes",
JSON_EXTRACT(properties, '$.condition') as "condition",
JSON_EXTRACT(properties, '$.actions') as "actions",
JSON_EXTRACT(properties, '$.enabled') as "enabled",
JSON_EXTRACT(properties, '$.description') as "description",
subscriptionId,
resourceGroupName,
activityLogAlertName
FROM azure.monitor.activity_log_alerts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.scopes') as "scopes",
json_extract_path_text(properties, '$.condition') as "condition",
json_extract_path_text(properties, '$.actions') as "actions",
json_extract_path_text(properties, '$.enabled') as "enabled",
json_extract_path_text(properties, '$.description') as "description",
subscriptionId,
resourceGroupName,
activityLogAlertName
FROM azure.monitor.activity_log_alerts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
