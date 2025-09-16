--- 
title: vw_tasks_subscription_level_tasks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_tasks_subscription_level_tasks
  - security
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

Creates, updates, deletes, gets or lists a <code>vw_tasks_subscription_level_tasks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_tasks_subscription_level_tasks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_tasks_subscription_level_tasks" /></td></tr>
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
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.creationTimeUtc') as "creation_time_utc",
JSON_EXTRACT(properties, '$.securityTaskParameters') as "security_task_parameters",
JSON_EXTRACT(properties, '$.lastStateChangeTimeUtc') as "last_state_change_time_utc",
JSON_EXTRACT(properties, '$.subState') as "sub_state",
subscriptionId,
ascLocation,
taskName
FROM azure.security.tasks_subscription_level_tasks
WHERE subscriptionId = 'replace-me' AND ascLocation = 'replace-me' AND taskName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.creationTimeUtc') as "creation_time_utc",
json_extract_path_text(properties, '$.securityTaskParameters') as "security_task_parameters",
json_extract_path_text(properties, '$.lastStateChangeTimeUtc') as "last_state_change_time_utc",
json_extract_path_text(properties, '$.subState') as "sub_state",
subscriptionId,
ascLocation,
taskName
FROM azure.security.tasks_subscription_level_tasks
WHERE subscriptionId = 'replace-me' AND ascLocation = 'replace-me' AND taskName = 'replace-me';
```

</TabItem>
</Tabs>
