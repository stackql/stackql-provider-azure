--- 
title: vw_tables
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_tables
  - log_analytics
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

Creates, updates, deletes, gets or lists a <code>vw_tables</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_tables</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.log_analytics.vw_tables" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.retentionInDays') as "retention_in_days",
JSON_EXTRACT(properties, '$.totalRetentionInDays') as "total_retention_in_days",
JSON_EXTRACT(properties, '$.archiveRetentionInDays') as "archive_retention_in_days",
JSON_EXTRACT(properties, '$.searchResults') as "search_results",
JSON_EXTRACT(properties, '$.restoredLogs') as "restored_logs",
JSON_EXTRACT(properties, '$.resultStatistics') as "result_statistics",
JSON_EXTRACT(properties, '$.plan') as "plan",
JSON_EXTRACT(properties, '$.lastPlanModifiedDate') as "last_plan_modified_date",
JSON_EXTRACT(properties, '$.schema') as "schema",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.retentionInDaysAsDefault') as "retention_in_days_as_default",
JSON_EXTRACT(properties, '$.totalRetentionInDaysAsDefault') as "total_retention_in_days_as_default",
subscriptionId,
resourceGroupName,
workspaceName,
tableName
FROM azure.log_analytics.tables
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.retentionInDays') as "retention_in_days",
json_extract_path_text(properties, '$.totalRetentionInDays') as "total_retention_in_days",
json_extract_path_text(properties, '$.archiveRetentionInDays') as "archive_retention_in_days",
json_extract_path_text(properties, '$.searchResults') as "search_results",
json_extract_path_text(properties, '$.restoredLogs') as "restored_logs",
json_extract_path_text(properties, '$.resultStatistics') as "result_statistics",
json_extract_path_text(properties, '$.plan') as "plan",
json_extract_path_text(properties, '$.lastPlanModifiedDate') as "last_plan_modified_date",
json_extract_path_text(properties, '$.schema') as "schema",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.retentionInDaysAsDefault') as "retention_in_days_as_default",
json_extract_path_text(properties, '$.totalRetentionInDaysAsDefault') as "total_retention_in_days_as_default",
subscriptionId,
resourceGroupName,
workspaceName,
tableName
FROM azure.log_analytics.tables
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
