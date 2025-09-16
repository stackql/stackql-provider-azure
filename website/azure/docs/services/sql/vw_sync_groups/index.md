--- 
title: vw_sync_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sync_groups
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

Creates, updates, deletes, gets or lists a <code>vw_sync_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sync_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_sync_groups" /></td></tr>
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
sku as sku,
JSON_EXTRACT(properties, '$.interval') as "interval",
JSON_EXTRACT(properties, '$.lastSyncTime') as "last_sync_time",
JSON_EXTRACT(properties, '$.conflictResolutionPolicy') as "conflict_resolution_policy",
JSON_EXTRACT(properties, '$.syncDatabaseId') as "sync_database_id",
JSON_EXTRACT(properties, '$.hubDatabaseUserName') as "hub_database_user_name",
JSON_EXTRACT(properties, '$.hubDatabasePassword') as "hub_database_password",
JSON_EXTRACT(properties, '$.syncState') as "sync_state",
JSON_EXTRACT(properties, '$.schema') as "schema",
JSON_EXTRACT(properties, '$.enableConflictLogging') as "enable_conflict_logging",
JSON_EXTRACT(properties, '$.conflictLoggingRetentionInDays') as "conflict_logging_retention_in_days",
JSON_EXTRACT(properties, '$.usePrivateLinkConnection') as "use_private_link_connection",
JSON_EXTRACT(properties, '$.privateEndpointName') as "private_endpoint_name",
subscriptionId,
resourceGroupName,
serverName,
databaseName,
syncGroupName
FROM azure.sql.sync_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
sku as sku,
json_extract_path_text(properties, '$.interval') as "interval",
json_extract_path_text(properties, '$.lastSyncTime') as "last_sync_time",
json_extract_path_text(properties, '$.conflictResolutionPolicy') as "conflict_resolution_policy",
json_extract_path_text(properties, '$.syncDatabaseId') as "sync_database_id",
json_extract_path_text(properties, '$.hubDatabaseUserName') as "hub_database_user_name",
json_extract_path_text(properties, '$.hubDatabasePassword') as "hub_database_password",
json_extract_path_text(properties, '$.syncState') as "sync_state",
json_extract_path_text(properties, '$.schema') as "schema",
json_extract_path_text(properties, '$.enableConflictLogging') as "enable_conflict_logging",
json_extract_path_text(properties, '$.conflictLoggingRetentionInDays') as "conflict_logging_retention_in_days",
json_extract_path_text(properties, '$.usePrivateLinkConnection') as "use_private_link_connection",
json_extract_path_text(properties, '$.privateEndpointName') as "private_endpoint_name",
subscriptionId,
resourceGroupName,
serverName,
databaseName,
syncGroupName
FROM azure.sql.sync_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
</Tabs>
