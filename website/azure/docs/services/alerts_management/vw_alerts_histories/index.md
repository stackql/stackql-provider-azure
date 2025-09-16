--- 
title: vw_alerts_histories
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_alerts_histories
  - alerts_management
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

Creates, updates, deletes, gets or lists a <code>vw_alerts_histories</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_alerts_histories</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.alerts_management.vw_alerts_histories" /></td></tr>
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
JSON_EXTRACT(properties, '$.alertId') as "alert_id",
JSON_EXTRACT(properties, '$.modifications') as "modifications",
scope,
alertId
FROM azure.alerts_management.alerts_histories
WHERE scope = 'replace-me' AND alertId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.alertId') as "alert_id",
json_extract_path_text(properties, '$.modifications') as "modifications",
scope,
alertId
FROM azure.alerts_management.alerts_histories
WHERE scope = 'replace-me' AND alertId = 'replace-me';
```

</TabItem>
</Tabs>
