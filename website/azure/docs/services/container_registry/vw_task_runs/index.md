--- 
title: vw_task_runs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_task_runs
  - container_registry
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

Creates, updates, deletes, gets or lists a <code>vw_task_runs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_task_runs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_registry.vw_task_runs" /></td></tr>
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
systemData as system_data,
identity as identity,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.runRequest') as "run_request",
JSON_EXTRACT(properties, '$.runResult') as "run_result",
JSON_EXTRACT(properties, '$.forceUpdateTag') as "force_update_tag",
subscriptionId,
resourceGroupName,
registryName,
taskRunName
FROM azure.container_registry.task_runs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND registryName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
systemData as system_data,
identity as identity,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.runRequest') as "run_request",
json_extract_path_text(properties, '$.runResult') as "run_result",
json_extract_path_text(properties, '$.forceUpdateTag') as "force_update_tag",
subscriptionId,
resourceGroupName,
registryName,
taskRunName
FROM azure.container_registry.task_runs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND registryName = 'replace-me';
```

</TabItem>
</Tabs>
