--- 
title: vw_migrations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_migrations
  - postgresql
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

Creates, updates, deletes, gets or lists a <code>vw_migrations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_migrations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.postgresql.vw_migrations" /></td></tr>
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
location as location,
tags as tags,
JSON_EXTRACT(properties, '$.migrationId') as "migration_id",
JSON_EXTRACT(properties, '$.currentStatus') as "current_status",
JSON_EXTRACT(properties, '$.migrationInstanceResourceId') as "migration_instance_resource_id",
JSON_EXTRACT(properties, '$.migrationMode') as "migration_mode",
JSON_EXTRACT(properties, '$.migrationOption') as "migration_option",
JSON_EXTRACT(properties, '$.sourceType') as "source_type",
JSON_EXTRACT(properties, '$.sslMode') as "ssl_mode",
JSON_EXTRACT(properties, '$.sourceDbServerMetadata') as "source_db_server_metadata",
JSON_EXTRACT(properties, '$.targetDbServerMetadata') as "target_db_server_metadata",
JSON_EXTRACT(properties, '$.sourceDbServerResourceId') as "source_db_server_resource_id",
JSON_EXTRACT(properties, '$.sourceDbServerFullyQualifiedDomainName') as "source_db_server_fully_qualified_domain_name",
JSON_EXTRACT(properties, '$.targetDbServerResourceId') as "target_db_server_resource_id",
JSON_EXTRACT(properties, '$.targetDbServerFullyQualifiedDomainName') as "target_db_server_fully_qualified_domain_name",
JSON_EXTRACT(properties, '$.secretParameters') as "secret_parameters",
JSON_EXTRACT(properties, '$.dbsToMigrate') as "dbs_to_migrate",
JSON_EXTRACT(properties, '$.setupLogicalReplicationOnSourceDbIfNeeded') as "setup_logical_replication_on_source_db_if_needed",
JSON_EXTRACT(properties, '$.overwriteDbsInTarget') as "overwrite_dbs_in_target",
JSON_EXTRACT(properties, '$.migrationWindowStartTimeInUtc') as "migration_window_start_time_in_utc",
JSON_EXTRACT(properties, '$.migrationWindowEndTimeInUtc') as "migration_window_end_time_in_utc",
JSON_EXTRACT(properties, '$.migrateRoles') as "migrate_roles",
JSON_EXTRACT(properties, '$.startDataMigration') as "start_data_migration",
JSON_EXTRACT(properties, '$.triggerCutover') as "trigger_cutover",
JSON_EXTRACT(properties, '$.dbsToTriggerCutoverOn') as "dbs_to_trigger_cutover_on",
JSON_EXTRACT(properties, '$.cancel') as "cancel",
JSON_EXTRACT(properties, '$.dbsToCancelMigrationOn') as "dbs_to_cancel_migration_on",
subscriptionId,
resourceGroupName,
targetDbServerName,
migrationName
FROM azure.postgresql.migrations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND targetDbServerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.migrationId') as "migration_id",
json_extract_path_text(properties, '$.currentStatus') as "current_status",
json_extract_path_text(properties, '$.migrationInstanceResourceId') as "migration_instance_resource_id",
json_extract_path_text(properties, '$.migrationMode') as "migration_mode",
json_extract_path_text(properties, '$.migrationOption') as "migration_option",
json_extract_path_text(properties, '$.sourceType') as "source_type",
json_extract_path_text(properties, '$.sslMode') as "ssl_mode",
json_extract_path_text(properties, '$.sourceDbServerMetadata') as "source_db_server_metadata",
json_extract_path_text(properties, '$.targetDbServerMetadata') as "target_db_server_metadata",
json_extract_path_text(properties, '$.sourceDbServerResourceId') as "source_db_server_resource_id",
json_extract_path_text(properties, '$.sourceDbServerFullyQualifiedDomainName') as "source_db_server_fully_qualified_domain_name",
json_extract_path_text(properties, '$.targetDbServerResourceId') as "target_db_server_resource_id",
json_extract_path_text(properties, '$.targetDbServerFullyQualifiedDomainName') as "target_db_server_fully_qualified_domain_name",
json_extract_path_text(properties, '$.secretParameters') as "secret_parameters",
json_extract_path_text(properties, '$.dbsToMigrate') as "dbs_to_migrate",
json_extract_path_text(properties, '$.setupLogicalReplicationOnSourceDbIfNeeded') as "setup_logical_replication_on_source_db_if_needed",
json_extract_path_text(properties, '$.overwriteDbsInTarget') as "overwrite_dbs_in_target",
json_extract_path_text(properties, '$.migrationWindowStartTimeInUtc') as "migration_window_start_time_in_utc",
json_extract_path_text(properties, '$.migrationWindowEndTimeInUtc') as "migration_window_end_time_in_utc",
json_extract_path_text(properties, '$.migrateRoles') as "migrate_roles",
json_extract_path_text(properties, '$.startDataMigration') as "start_data_migration",
json_extract_path_text(properties, '$.triggerCutover') as "trigger_cutover",
json_extract_path_text(properties, '$.dbsToTriggerCutoverOn') as "dbs_to_trigger_cutover_on",
json_extract_path_text(properties, '$.cancel') as "cancel",
json_extract_path_text(properties, '$.dbsToCancelMigrationOn') as "dbs_to_cancel_migration_on",
subscriptionId,
resourceGroupName,
targetDbServerName,
migrationName
FROM azure.postgresql.migrations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND targetDbServerName = 'replace-me';
```

</TabItem>
</Tabs>
