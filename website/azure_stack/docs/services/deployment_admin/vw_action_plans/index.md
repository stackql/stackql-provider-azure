--- 
title: vw_action_plans
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_action_plans
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

Creates, updates, deletes, gets or lists a <code>vw_action_plans</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_action_plans</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.deployment_admin.vw_action_plans" /></td></tr>
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
JSON_EXTRACT(properties, '$.actionPlanUri') as "action_plan_uri",
JSON_EXTRACT(properties, '$.resourceGroupName') as "resource_group_name",
JSON_EXTRACT(properties, '$.subscriptionId') as "subscription_id",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.actionPlanInstanceId') as "action_plan_instance_id",
JSON_EXTRACT(properties, '$.blobContainerName') as "blob_container_name",
subscriptionId,
planId
FROM azure_stack.deployment_admin.action_plans
WHERE subscriptionId = 'replace-me';
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
json_extract_path_text(properties, '$.actionPlanUri') as "action_plan_uri",
json_extract_path_text(properties, '$.resourceGroupName') as "resource_group_name",
json_extract_path_text(properties, '$.subscriptionId') as "subscription_id",
json_extract_path_text(properties, '$.parameters') as "parameters",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.actionPlanInstanceId') as "action_plan_instance_id",
json_extract_path_text(properties, '$.blobContainerName') as "blob_container_name",
subscriptionId,
planId
FROM azure_stack.deployment_admin.action_plans
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
