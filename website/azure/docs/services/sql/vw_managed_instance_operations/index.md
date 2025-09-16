--- 
title: vw_managed_instance_operations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_managed_instance_operations
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

Creates, updates, deletes, gets or lists a <code>vw_managed_instance_operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_managed_instance_operations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_managed_instance_operations" /></td></tr>
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
JSON_EXTRACT(properties, '$.managedInstanceName') as "managed_instance_name",
JSON_EXTRACT(properties, '$.operation') as "operation",
JSON_EXTRACT(properties, '$.operationFriendlyName') as "operation_friendly_name",
JSON_EXTRACT(properties, '$.percentComplete') as "percent_complete",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.errorCode') as "error_code",
JSON_EXTRACT(properties, '$.errorDescription') as "error_description",
JSON_EXTRACT(properties, '$.errorSeverity') as "error_severity",
JSON_EXTRACT(properties, '$.isUserError') as "is_user_error",
JSON_EXTRACT(properties, '$.estimatedCompletionTime') as "estimated_completion_time",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.isCancellable') as "is_cancellable",
JSON_EXTRACT(properties, '$.operationParameters') as "operation_parameters",
JSON_EXTRACT(properties, '$.operationSteps') as "operation_steps",
subscriptionId,
resourceGroupName,
managedInstanceName,
operationId
FROM azure.sql.managed_instance_operations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedInstanceName = 'replace-me' AND operationId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.managedInstanceName') as "managed_instance_name",
json_extract_path_text(properties, '$.operation') as "operation",
json_extract_path_text(properties, '$.operationFriendlyName') as "operation_friendly_name",
json_extract_path_text(properties, '$.percentComplete') as "percent_complete",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.errorCode') as "error_code",
json_extract_path_text(properties, '$.errorDescription') as "error_description",
json_extract_path_text(properties, '$.errorSeverity') as "error_severity",
json_extract_path_text(properties, '$.isUserError') as "is_user_error",
json_extract_path_text(properties, '$.estimatedCompletionTime') as "estimated_completion_time",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.isCancellable') as "is_cancellable",
json_extract_path_text(properties, '$.operationParameters') as "operation_parameters",
json_extract_path_text(properties, '$.operationSteps') as "operation_steps",
subscriptionId,
resourceGroupName,
managedInstanceName,
operationId
FROM azure.sql.managed_instance_operations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedInstanceName = 'replace-me' AND operationId = 'replace-me';
```

</TabItem>
</Tabs>
