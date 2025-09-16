--- 
title: vw_solutions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_solutions
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

Creates, updates, deletes, gets or lists a <code>vw_solutions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_solutions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate_projects.vw_solutions" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.tool') as "tool",
JSON_EXTRACT(properties, '$.purpose') as "purpose",
JSON_EXTRACT(properties, '$.goal') as "goal",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.cleanupState') as "cleanup_state",
JSON_EXTRACT(properties, '$.summary') as "summary",
JSON_EXTRACT(properties, '$.details') as "details",
subscriptionId,
resourceGroupName,
migrateProjectName,
solutionName
FROM azure.migrate_projects.solutions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND migrateProjectName = 'replace-me' AND solutionName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
etag as etag,
json_extract_path_text(properties, '$.tool') as "tool",
json_extract_path_text(properties, '$.purpose') as "purpose",
json_extract_path_text(properties, '$.goal') as "goal",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.cleanupState') as "cleanup_state",
json_extract_path_text(properties, '$.summary') as "summary",
json_extract_path_text(properties, '$.details') as "details",
subscriptionId,
resourceGroupName,
migrateProjectName,
solutionName
FROM azure.migrate_projects.solutions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND migrateProjectName = 'replace-me' AND solutionName = 'replace-me';
```

</TabItem>
</Tabs>
