--- 
title: vw_jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_jobs
  - scheduler
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

Creates, updates, deletes, gets or lists a <code>vw_jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_jobs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.scheduler.vw_jobs" /></td></tr>
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
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.action') as "action",
JSON_EXTRACT(properties, '$.recurrence') as "recurrence",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
jobCollectionName,
jobName
FROM azure.scheduler.jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND jobCollectionName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.action') as "action",
json_extract_path_text(properties, '$.recurrence') as "recurrence",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
jobCollectionName,
jobName
FROM azure.scheduler.jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND jobCollectionName = 'replace-me';
```

</TabItem>
</Tabs>
