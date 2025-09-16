--- 
title: vw_sync_members
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sync_members
  - sql
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

Creates, updates, deletes, gets or lists a <code>vw_sync_members</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sync_members</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_sync_members" /></td></tr>
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
JSON_EXTRACT(properties, '$.databaseType') as "database_type",
JSON_EXTRACT(properties, '$.syncAgentId') as "sync_agent_id",
JSON_EXTRACT(properties, '$.sqlServerDatabaseId') as "sql_server_database_id",
JSON_EXTRACT(properties, '$.syncMemberAzureDatabaseResourceId') as "sync_member_azure_database_resource_id",
JSON_EXTRACT(properties, '$.usePrivateLinkConnection') as "use_private_link_connection",
JSON_EXTRACT(properties, '$.privateEndpointName') as "private_endpoint_name",
JSON_EXTRACT(properties, '$.serverName') as "server_name",
JSON_EXTRACT(properties, '$.databaseName') as "database_name",
JSON_EXTRACT(properties, '$.userName') as "user_name",
JSON_EXTRACT(properties, '$.password') as "password",
JSON_EXTRACT(properties, '$.syncDirection') as "sync_direction",
JSON_EXTRACT(properties, '$.syncState') as "sync_state",
subscriptionId,
resourceGroupName,
serverName,
databaseName,
syncGroupName,
syncMemberName
FROM azure.sql.sync_members
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND databaseName = 'replace-me' AND syncGroupName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.databaseType') as "database_type",
json_extract_path_text(properties, '$.syncAgentId') as "sync_agent_id",
json_extract_path_text(properties, '$.sqlServerDatabaseId') as "sql_server_database_id",
json_extract_path_text(properties, '$.syncMemberAzureDatabaseResourceId') as "sync_member_azure_database_resource_id",
json_extract_path_text(properties, '$.usePrivateLinkConnection') as "use_private_link_connection",
json_extract_path_text(properties, '$.privateEndpointName') as "private_endpoint_name",
json_extract_path_text(properties, '$.serverName') as "server_name",
json_extract_path_text(properties, '$.databaseName') as "database_name",
json_extract_path_text(properties, '$.userName') as "user_name",
json_extract_path_text(properties, '$.password') as "password",
json_extract_path_text(properties, '$.syncDirection') as "sync_direction",
json_extract_path_text(properties, '$.syncState') as "sync_state",
subscriptionId,
resourceGroupName,
serverName,
databaseName,
syncGroupName,
syncMemberName
FROM azure.sql.sync_members
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND databaseName = 'replace-me' AND syncGroupName = 'replace-me';
```

</TabItem>
</Tabs>
