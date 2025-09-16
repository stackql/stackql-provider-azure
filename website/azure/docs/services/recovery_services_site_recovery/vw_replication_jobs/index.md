--- 
title: vw_replication_jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replication_jobs
  - recovery_services_site_recovery
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

Creates, updates, deletes, gets or lists a <code>vw_replication_jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replication_jobs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.vw_replication_jobs" /></td></tr>
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
type as type,
JSON_EXTRACT(properties, '$.activityId') as "activity_id",
JSON_EXTRACT(properties, '$.scenarioName') as "scenario_name",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.stateDescription') as "state_description",
JSON_EXTRACT(properties, '$.tasks') as "tasks",
JSON_EXTRACT(properties, '$.errors') as "errors",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.allowedActions') as "allowed_actions",
JSON_EXTRACT(properties, '$.targetObjectId') as "target_object_id",
JSON_EXTRACT(properties, '$.targetObjectName') as "target_object_name",
JSON_EXTRACT(properties, '$.targetInstanceType') as "target_instance_type",
JSON_EXTRACT(properties, '$.customDetails') as "custom_details",
subscriptionId,
resourceGroupName,
resourceName,
jobName
FROM azure.recovery_services_site_recovery.replication_jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
json_extract_path_text(properties, '$.activityId') as "activity_id",
json_extract_path_text(properties, '$.scenarioName') as "scenario_name",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.stateDescription') as "state_description",
json_extract_path_text(properties, '$.tasks') as "tasks",
json_extract_path_text(properties, '$.errors') as "errors",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.allowedActions') as "allowed_actions",
json_extract_path_text(properties, '$.targetObjectId') as "target_object_id",
json_extract_path_text(properties, '$.targetObjectName') as "target_object_name",
json_extract_path_text(properties, '$.targetInstanceType') as "target_instance_type",
json_extract_path_text(properties, '$.customDetails') as "custom_details",
subscriptionId,
resourceGroupName,
resourceName,
jobName
FROM azure.recovery_services_site_recovery.replication_jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
