--- 
title: vw_events_events
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_events_events
  - migrate_projects
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

Creates, updates, deletes, gets or lists a <code>vw_events_events</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_events_events</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate_projects.vw_events_events" /></td></tr>
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
JSON_EXTRACT(properties, '$.instanceType') as "instance_type",
JSON_EXTRACT(properties, '$.errorCode') as "error_code",
JSON_EXTRACT(properties, '$.errorMessage') as "error_message",
JSON_EXTRACT(properties, '$.recommendation') as "recommendation",
JSON_EXTRACT(properties, '$.possibleCauses') as "possible_causes",
JSON_EXTRACT(properties, '$.solution') as "solution",
JSON_EXTRACT(properties, '$.clientRequestId') as "client_request_id",
subscriptionId,
resourceGroupName,
migrateProjectName,
eventName
FROM azure.migrate_projects.events_events
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND migrateProjectName = 'replace-me' AND eventName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.instanceType') as "instance_type",
json_extract_path_text(properties, '$.errorCode') as "error_code",
json_extract_path_text(properties, '$.errorMessage') as "error_message",
json_extract_path_text(properties, '$.recommendation') as "recommendation",
json_extract_path_text(properties, '$.possibleCauses') as "possible_causes",
json_extract_path_text(properties, '$.solution') as "solution",
json_extract_path_text(properties, '$.clientRequestId') as "client_request_id",
subscriptionId,
resourceGroupName,
migrateProjectName,
eventName
FROM azure.migrate_projects.events_events
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND migrateProjectName = 'replace-me' AND eventName = 'replace-me';
```

</TabItem>
</Tabs>
