--- 
title: vw_project_catalogs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_project_catalogs
  - dev_center
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

Creates, updates, deletes, gets or lists a <code>vw_project_catalogs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_project_catalogs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.vw_project_catalogs" /></td></tr>
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
JSON_EXTRACT(properties, '$.gitHub') as "git_hub",
JSON_EXTRACT(properties, '$.adoGit') as "ado_git",
JSON_EXTRACT(properties, '$.syncType') as "sync_type",
JSON_EXTRACT(properties, '$.tags') as "tags",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.syncState') as "sync_state",
JSON_EXTRACT(properties, '$.lastSyncStats') as "last_sync_stats",
JSON_EXTRACT(properties, '$.connectionState') as "connection_state",
JSON_EXTRACT(properties, '$.lastConnectionTime') as "last_connection_time",
JSON_EXTRACT(properties, '$.lastSyncTime') as "last_sync_time",
subscriptionId,
resourceGroupName,
projectName,
catalogName
FROM azure.dev_center.project_catalogs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND projectName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.gitHub') as "git_hub",
json_extract_path_text(properties, '$.adoGit') as "ado_git",
json_extract_path_text(properties, '$.syncType') as "sync_type",
json_extract_path_text(properties, '$.tags') as "tags",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.syncState') as "sync_state",
json_extract_path_text(properties, '$.lastSyncStats') as "last_sync_stats",
json_extract_path_text(properties, '$.connectionState') as "connection_state",
json_extract_path_text(properties, '$.lastConnectionTime') as "last_connection_time",
json_extract_path_text(properties, '$.lastSyncTime') as "last_sync_time",
subscriptionId,
resourceGroupName,
projectName,
catalogName
FROM azure.dev_center.project_catalogs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND projectName = 'replace-me';
```

</TabItem>
</Tabs>
