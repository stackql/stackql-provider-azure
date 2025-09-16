--- 
title: vw_sql_databases_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sql_databases_controllers
  - migrate
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

Creates, updates, deletes, gets or lists a <code>vw_sql_databases_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sql_databases_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate.vw_sql_databases_controllers" /></td></tr>
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
JSON_EXTRACT(properties, '$.parentReplicaOverview') as "parent_replica_overview",
JSON_EXTRACT(properties, '$.isDatabaseHighlyAvailable') as "is_database_highly_available",
JSON_EXTRACT(properties, '$.fileMetadataList') as "file_metadata_list",
JSON_EXTRACT(properties, '$.hostname') as "hostname",
JSON_EXTRACT(properties, '$.sqlServerName') as "sql_server_name",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.sizeMb') as "size_mb",
JSON_EXTRACT(properties, '$.databaseName') as "database_name",
JSON_EXTRACT(properties, '$.sqlServerArmId') as "sql_server_arm_id",
JSON_EXTRACT(properties, '$.compatibilityLevel') as "compatibility_level",
JSON_EXTRACT(properties, '$.isDeleted') as "is_deleted",
JSON_EXTRACT(properties, '$.errors') as "errors",
JSON_EXTRACT(properties, '$.createdTimestamp') as "created_timestamp",
JSON_EXTRACT(properties, '$.updatedTimestamp') as "updated_timestamp",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName,
sqlSiteName,
sqlDatabaseName
FROM azure.migrate.sql_databases_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me' AND sqlSiteName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.parentReplicaOverview') as "parent_replica_overview",
json_extract_path_text(properties, '$.isDatabaseHighlyAvailable') as "is_database_highly_available",
json_extract_path_text(properties, '$.fileMetadataList') as "file_metadata_list",
json_extract_path_text(properties, '$.hostname') as "hostname",
json_extract_path_text(properties, '$.sqlServerName') as "sql_server_name",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.sizeMb') as "size_mb",
json_extract_path_text(properties, '$.databaseName') as "database_name",
json_extract_path_text(properties, '$.sqlServerArmId') as "sql_server_arm_id",
json_extract_path_text(properties, '$.compatibilityLevel') as "compatibility_level",
json_extract_path_text(properties, '$.isDeleted') as "is_deleted",
json_extract_path_text(properties, '$.errors') as "errors",
json_extract_path_text(properties, '$.createdTimestamp') as "created_timestamp",
json_extract_path_text(properties, '$.updatedTimestamp') as "updated_timestamp",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName,
sqlSiteName,
sqlDatabaseName
FROM azure.migrate.sql_databases_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me' AND sqlSiteName = 'replace-me';
```

</TabItem>
</Tabs>
