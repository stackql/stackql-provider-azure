--- 
title: vw_patch_schedules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_patch_schedules
  - redis
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_patch_schedules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_patch_schedules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.redis.vw_patch_schedules" /></td></tr>
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
location as location,
JSON_EXTRACT(properties, '$.scheduleEntries') as "schedule_entries",
subscriptionId,
resourceGroupName,
name,
default,
cacheName
FROM azure_isv.redis.patch_schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND cacheName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
json_extract_path_text(properties, '$.scheduleEntries') as "schedule_entries",
subscriptionId,
resourceGroupName,
name,
default,
cacheName
FROM azure_isv.redis.patch_schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND cacheName = 'replace-me';
```

</TabItem>
</Tabs>
