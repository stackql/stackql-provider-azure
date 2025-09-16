--- 
title: vw_sync_agents
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sync_agents
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

Creates, updates, deletes, gets or lists a <code>vw_sync_agents</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sync_agents</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_sync_agents" /></td></tr>
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
JSON_EXTRACT(properties, '$.name') as "name",
JSON_EXTRACT(properties, '$.syncDatabaseId') as "sync_database_id",
JSON_EXTRACT(properties, '$.lastAliveTime') as "last_alive_time",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.isUpToDate') as "is_up_to_date",
JSON_EXTRACT(properties, '$.expiryTime') as "expiry_time",
JSON_EXTRACT(properties, '$.version') as "version",
subscriptionId,
resourceGroupName,
serverName,
syncAgentName
FROM azure.sql.sync_agents
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.name') as "name",
json_extract_path_text(properties, '$.syncDatabaseId') as "sync_database_id",
json_extract_path_text(properties, '$.lastAliveTime') as "last_alive_time",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.isUpToDate') as "is_up_to_date",
json_extract_path_text(properties, '$.expiryTime') as "expiry_time",
json_extract_path_text(properties, '$.version') as "version",
subscriptionId,
resourceGroupName,
serverName,
syncAgentName
FROM azure.sql.sync_agents
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
</Tabs>
