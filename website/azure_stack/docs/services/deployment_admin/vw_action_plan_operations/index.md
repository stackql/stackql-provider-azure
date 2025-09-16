--- 
title: vw_action_plan_operations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_action_plan_operations
  - deployment_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_action_plan_operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_action_plan_operations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.deployment_admin.vw_action_plan_operations" /></td></tr>
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
location as location,
eTag as e_tag,
type as type,
JSON_EXTRACT(properties, '$.title') as "title",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.subscriptionId') as "subscription_id",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.outputs') as "outputs",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.actionPlanInstanceId') as "action_plan_instance_id",
JSON_EXTRACT(properties, '$.actionPlanOperationId') as "action_plan_operation_id",
JSON_EXTRACT(properties, '$.blobContainerName') as "blob_container_name",
subscriptionId,
planId,
operationId
FROM azure_stack.deployment_admin.action_plan_operations
WHERE subscriptionId = 'replace-me' AND planId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
eTag as e_tag,
type as type,
json_extract_path_text(properties, '$.title') as "title",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.subscriptionId') as "subscription_id",
json_extract_path_text(properties, '$.parameters') as "parameters",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.outputs') as "outputs",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.actionPlanInstanceId') as "action_plan_instance_id",
json_extract_path_text(properties, '$.actionPlanOperationId') as "action_plan_operation_id",
json_extract_path_text(properties, '$.blobContainerName') as "blob_container_name",
subscriptionId,
planId,
operationId
FROM azure_stack.deployment_admin.action_plan_operations
WHERE subscriptionId = 'replace-me' AND planId = 'replace-me';
```

</TabItem>
</Tabs>
