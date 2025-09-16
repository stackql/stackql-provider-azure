--- 
title: vw_database_migrations_mongo_to_cosmos_dbv_core_mongo
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_database_migrations_mongo_to_cosmos_dbv_core_mongo
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

Creates, updates, deletes, gets or lists a <code>vw_database_migrations_mongo_to_cosmos_dbv_core_mongo</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_database_migrations_mongo_to_cosmos_dbv_core_mongo</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_migration.vw_database_migrations_mongo_to_cosmos_dbv_core_mongo" /></td></tr>
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
JSON_EXTRACT(properties, '$.kind') as "kind",
JSON_EXTRACT(properties, '$.scope') as "scope",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.migrationStatus') as "migration_status",
JSON_EXTRACT(properties, '$.startedOn') as "started_on",
JSON_EXTRACT(properties, '$.endedOn') as "ended_on",
JSON_EXTRACT(properties, '$.migrationService') as "migration_service",
JSON_EXTRACT(properties, '$.migrationOperationId') as "migration_operation_id",
JSON_EXTRACT(properties, '$.migrationFailureError') as "migration_failure_error",
JSON_EXTRACT(properties, '$.provisioningError') as "provisioning_error",
JSON_EXTRACT(properties, '$.sourceMongoConnection') as "source_mongo_connection",
JSON_EXTRACT(properties, '$.targetMongoConnection') as "target_mongo_connection",
JSON_EXTRACT(properties, '$.collectionList') as "collection_list",
subscriptionId,
resourceGroupName,
targetResourceName,
migrationName
FROM azure.data_migration.database_migrations_mongo_to_cosmos_dbv_core_mongo
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND targetResourceName = 'replace-me' AND migrationName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.kind') as "kind",
json_extract_path_text(properties, '$.scope') as "scope",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.migrationStatus') as "migration_status",
json_extract_path_text(properties, '$.startedOn') as "started_on",
json_extract_path_text(properties, '$.endedOn') as "ended_on",
json_extract_path_text(properties, '$.migrationService') as "migration_service",
json_extract_path_text(properties, '$.migrationOperationId') as "migration_operation_id",
json_extract_path_text(properties, '$.migrationFailureError') as "migration_failure_error",
json_extract_path_text(properties, '$.provisioningError') as "provisioning_error",
json_extract_path_text(properties, '$.sourceMongoConnection') as "source_mongo_connection",
json_extract_path_text(properties, '$.targetMongoConnection') as "target_mongo_connection",
json_extract_path_text(properties, '$.collectionList') as "collection_list",
subscriptionId,
resourceGroupName,
targetResourceName,
migrationName
FROM azure.data_migration.database_migrations_mongo_to_cosmos_dbv_core_mongo
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND targetResourceName = 'replace-me' AND migrationName = 'replace-me';
```

</TabItem>
</Tabs>
