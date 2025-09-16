--- 
title: vw_tasks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_tasks
  - defender
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

Creates, updates, deletes, gets or lists a <code>vw_tasks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_tasks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.defender.vw_tasks" /></td></tr>
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
JSON_EXTRACT(properties, '$.startedAt') as "started_at",
JSON_EXTRACT(properties, '$.completedAt') as "completed_at",
JSON_EXTRACT(properties, '$.lastPolledAt') as "last_polled_at",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.phase') as "phase",
JSON_EXTRACT(properties, '$.reason') as "reason",
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
workspaceName,
taskId
FROM azure.defender.tasks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND taskId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.startedAt') as "started_at",
json_extract_path_text(properties, '$.completedAt') as "completed_at",
json_extract_path_text(properties, '$.lastPolledAt') as "last_polled_at",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.phase') as "phase",
json_extract_path_text(properties, '$.reason') as "reason",
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
workspaceName,
taskId
FROM azure.defender.tasks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND taskId = 'replace-me';
```

</TabItem>
</Tabs>
