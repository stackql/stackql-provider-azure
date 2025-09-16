--- 
title: vw_service_tasks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_service_tasks
  - data_migration
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

Creates, updates, deletes, gets or lists a <code>vw_service_tasks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_service_tasks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_migration.vw_service_tasks" /></td></tr>
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
etag as etag,
systemData as system_data,
type as type,
JSON_EXTRACT(properties, '$.taskType') as "task_type",
JSON_EXTRACT(properties, '$.errors') as "errors",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.commands') as "commands",
JSON_EXTRACT(properties, '$.clientData') as "client_data",
subscriptionId,
groupName,
serviceName,
taskName
FROM azure.data_migration.service_tasks
WHERE subscriptionId = 'replace-me' AND groupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
systemData as system_data,
type as type,
json_extract_path_text(properties, '$.taskType') as "task_type",
json_extract_path_text(properties, '$.errors') as "errors",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.commands') as "commands",
json_extract_path_text(properties, '$.clientData') as "client_data",
subscriptionId,
groupName,
serviceName,
taskName
FROM azure.data_migration.service_tasks
WHERE subscriptionId = 'replace-me' AND groupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
