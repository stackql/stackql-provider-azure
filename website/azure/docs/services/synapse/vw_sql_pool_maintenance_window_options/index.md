--- 
title: vw_sql_pool_maintenance_window_options
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sql_pool_maintenance_window_options
  - synapse
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

Creates, updates, deletes, gets or lists a <code>vw_sql_pool_maintenance_window_options</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sql_pool_maintenance_window_options</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.vw_sql_pool_maintenance_window_options" /></td></tr>
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
JSON_EXTRACT(properties, '$.isEnabled') as "is_enabled",
JSON_EXTRACT(properties, '$.maintenanceWindowCycles') as "maintenance_window_cycles",
JSON_EXTRACT(properties, '$.minDurationInMinutes') as "min_duration_in_minutes",
JSON_EXTRACT(properties, '$.defaultDurationInMinutes') as "default_duration_in_minutes",
JSON_EXTRACT(properties, '$.minCycles') as "min_cycles",
JSON_EXTRACT(properties, '$.timeGranularityInMinutes') as "time_granularity_in_minutes",
JSON_EXTRACT(properties, '$.allowMultipleMaintenanceWindowsPerCycle') as "allow_multiple_maintenance_windows_per_cycle",
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName,
maintenanceWindowOptionsName
FROM azure.synapse.sql_pool_maintenance_window_options
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND sqlPoolName = 'replace-me' AND maintenanceWindowOptionsName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.isEnabled') as "is_enabled",
json_extract_path_text(properties, '$.maintenanceWindowCycles') as "maintenance_window_cycles",
json_extract_path_text(properties, '$.minDurationInMinutes') as "min_duration_in_minutes",
json_extract_path_text(properties, '$.defaultDurationInMinutes') as "default_duration_in_minutes",
json_extract_path_text(properties, '$.minCycles') as "min_cycles",
json_extract_path_text(properties, '$.timeGranularityInMinutes') as "time_granularity_in_minutes",
json_extract_path_text(properties, '$.allowMultipleMaintenanceWindowsPerCycle') as "allow_multiple_maintenance_windows_per_cycle",
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName,
maintenanceWindowOptionsName
FROM azure.synapse.sql_pool_maintenance_window_options
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND sqlPoolName = 'replace-me' AND maintenanceWindowOptionsName = 'replace-me';
```

</TabItem>
</Tabs>
