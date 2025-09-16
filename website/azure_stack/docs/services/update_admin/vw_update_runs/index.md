--- 
title: vw_update_runs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_update_runs
  - update_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_update_runs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_update_runs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.update_admin.vw_update_runs" /></td></tr>
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
JSON_EXTRACT(properties, '$.progress') as "progress",
JSON_EXTRACT(properties, '$.timeStarted') as "time_started",
JSON_EXTRACT(properties, '$.duration') as "duration",
JSON_EXTRACT(properties, '$.state') as "state",
subscriptionId,
resourceGroupName,
updateLocation,
updateName,
runName
FROM azure_stack.update_admin.update_runs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND updateLocation = 'replace-me' AND updateName = 'replace-me';
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
json_extract_path_text(properties, '$.progress') as "progress",
json_extract_path_text(properties, '$.timeStarted') as "time_started",
json_extract_path_text(properties, '$.duration') as "duration",
json_extract_path_text(properties, '$.state') as "state",
subscriptionId,
resourceGroupName,
updateLocation,
updateName,
runName
FROM azure_stack.update_admin.update_runs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND updateLocation = 'replace-me' AND updateName = 'replace-me';
```

</TabItem>
</Tabs>
