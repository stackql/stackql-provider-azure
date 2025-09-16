--- 
title: vw_sql_servers_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sql_servers_controllers
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

Creates, updates, deletes, gets or lists a <code>vw_sql_servers_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sql_servers_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate.vw_sql_servers_controllers" /></td></tr>
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
JSON_EXTRACT(properties, '$.machineOverviewList') as "machine_overview_list",
JSON_EXTRACT(properties, '$.numberOfAgDatabases') as "number_of_ag_databases",
JSON_EXTRACT(properties, '$.sqlFciProperties') as "sql_fci_properties",
JSON_EXTRACT(properties, '$.productSupportStatus') as "product_support_status",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.numberOfUserDatabases') as "number_of_user_databases",
JSON_EXTRACT(properties, '$.sumOfUserDatabasesSizeInMb') as "sum_of_user_databases_size_in_mb",
JSON_EXTRACT(properties, '$.tempDbSizeInMb') as "temp_db_size_in_mb",
JSON_EXTRACT(properties, '$.maxServerMemoryInUseInMb') as "max_server_memory_in_use_in_mb",
JSON_EXTRACT(properties, '$.visibleOnlineCoreCount') as "visible_online_core_count",
JSON_EXTRACT(properties, '$.numOfLogins') as "num_of_logins",
JSON_EXTRACT(properties, '$.physicalCpuCount') as "physical_cpu_count",
JSON_EXTRACT(properties, '$.logicalCpuCount') as "logical_cpu_count",
JSON_EXTRACT(properties, '$.engineEdition') as "engine_edition",
JSON_EXTRACT(properties, '$.edition') as "edition",
JSON_EXTRACT(properties, '$.isHighAvailabilityEnabled') as "is_high_availability_enabled",
JSON_EXTRACT(properties, '$.isClustered') as "is_clustered",
JSON_EXTRACT(properties, '$.hyperthreadRatio') as "hyperthread_ratio",
JSON_EXTRACT(properties, '$.sqlStartTime') as "sql_start_time",
JSON_EXTRACT(properties, '$.machineArmIds') as "machine_arm_ids",
JSON_EXTRACT(properties, '$.runAsAccountId') as "run_as_account_id",
JSON_EXTRACT(properties, '$.hydratedRunAsAccountId') as "hydrated_run_as_account_id",
JSON_EXTRACT(properties, '$.hostName') as "host_name",
JSON_EXTRACT(properties, '$.sqlServerName') as "sql_server_name",
JSON_EXTRACT(properties, '$.portNumber') as "port_number",
JSON_EXTRACT(properties, '$.errors') as "errors",
JSON_EXTRACT(properties, '$.tags') as "tags",
JSON_EXTRACT(properties, '$.isDeleted') as "is_deleted",
JSON_EXTRACT(properties, '$.createdTimestamp') as "created_timestamp",
JSON_EXTRACT(properties, '$.updatedTimestamp') as "updated_timestamp",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName,
sqlSiteName,
sqlServerName
FROM azure.migrate.sql_servers_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me' AND sqlSiteName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.machineOverviewList') as "machine_overview_list",
json_extract_path_text(properties, '$.numberOfAgDatabases') as "number_of_ag_databases",
json_extract_path_text(properties, '$.sqlFciProperties') as "sql_fci_properties",
json_extract_path_text(properties, '$.productSupportStatus') as "product_support_status",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.numberOfUserDatabases') as "number_of_user_databases",
json_extract_path_text(properties, '$.sumOfUserDatabasesSizeInMb') as "sum_of_user_databases_size_in_mb",
json_extract_path_text(properties, '$.tempDbSizeInMb') as "temp_db_size_in_mb",
json_extract_path_text(properties, '$.maxServerMemoryInUseInMb') as "max_server_memory_in_use_in_mb",
json_extract_path_text(properties, '$.visibleOnlineCoreCount') as "visible_online_core_count",
json_extract_path_text(properties, '$.numOfLogins') as "num_of_logins",
json_extract_path_text(properties, '$.physicalCpuCount') as "physical_cpu_count",
json_extract_path_text(properties, '$.logicalCpuCount') as "logical_cpu_count",
json_extract_path_text(properties, '$.engineEdition') as "engine_edition",
json_extract_path_text(properties, '$.edition') as "edition",
json_extract_path_text(properties, '$.isHighAvailabilityEnabled') as "is_high_availability_enabled",
json_extract_path_text(properties, '$.isClustered') as "is_clustered",
json_extract_path_text(properties, '$.hyperthreadRatio') as "hyperthread_ratio",
json_extract_path_text(properties, '$.sqlStartTime') as "sql_start_time",
json_extract_path_text(properties, '$.machineArmIds') as "machine_arm_ids",
json_extract_path_text(properties, '$.runAsAccountId') as "run_as_account_id",
json_extract_path_text(properties, '$.hydratedRunAsAccountId') as "hydrated_run_as_account_id",
json_extract_path_text(properties, '$.hostName') as "host_name",
json_extract_path_text(properties, '$.sqlServerName') as "sql_server_name",
json_extract_path_text(properties, '$.portNumber') as "port_number",
json_extract_path_text(properties, '$.errors') as "errors",
json_extract_path_text(properties, '$.tags') as "tags",
json_extract_path_text(properties, '$.isDeleted') as "is_deleted",
json_extract_path_text(properties, '$.createdTimestamp') as "created_timestamp",
json_extract_path_text(properties, '$.updatedTimestamp') as "updated_timestamp",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName,
sqlSiteName,
sqlServerName
FROM azure.migrate.sql_servers_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me' AND sqlSiteName = 'replace-me';
```

</TabItem>
</Tabs>
