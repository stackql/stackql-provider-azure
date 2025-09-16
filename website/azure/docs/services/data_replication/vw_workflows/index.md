--- 
title: vw_workflows
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workflows
  - data_replication
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

Creates, updates, deletes, gets or lists a <code>vw_workflows</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workflows</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_replication.vw_workflows" /></td></tr>
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
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.objectId') as "object_id",
JSON_EXTRACT(properties, '$.objectName') as "object_name",
JSON_EXTRACT(properties, '$.objectInternalId') as "object_internal_id",
JSON_EXTRACT(properties, '$.objectInternalName') as "object_internal_name",
JSON_EXTRACT(properties, '$.objectType') as "object_type",
JSON_EXTRACT(properties, '$.replicationProviderId') as "replication_provider_id",
JSON_EXTRACT(properties, '$.sourceFabricProviderId') as "source_fabric_provider_id",
JSON_EXTRACT(properties, '$.targetFabricProviderId') as "target_fabric_provider_id",
JSON_EXTRACT(properties, '$.allowedActions') as "allowed_actions",
JSON_EXTRACT(properties, '$.activityId') as "activity_id",
JSON_EXTRACT(properties, '$.tasks') as "tasks",
JSON_EXTRACT(properties, '$.errors') as "errors",
JSON_EXTRACT(properties, '$.customProperties') as "custom_properties",
subscriptionId,
resourceGroupName,
vaultName,
jobName
FROM azure.data_replication.workflows
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.objectId') as "object_id",
json_extract_path_text(properties, '$.objectName') as "object_name",
json_extract_path_text(properties, '$.objectInternalId') as "object_internal_id",
json_extract_path_text(properties, '$.objectInternalName') as "object_internal_name",
json_extract_path_text(properties, '$.objectType') as "object_type",
json_extract_path_text(properties, '$.replicationProviderId') as "replication_provider_id",
json_extract_path_text(properties, '$.sourceFabricProviderId') as "source_fabric_provider_id",
json_extract_path_text(properties, '$.targetFabricProviderId') as "target_fabric_provider_id",
json_extract_path_text(properties, '$.allowedActions') as "allowed_actions",
json_extract_path_text(properties, '$.activityId') as "activity_id",
json_extract_path_text(properties, '$.tasks') as "tasks",
json_extract_path_text(properties, '$.errors') as "errors",
json_extract_path_text(properties, '$.customProperties') as "custom_properties",
subscriptionId,
resourceGroupName,
vaultName,
jobName
FROM azure.data_replication.workflows
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
</Tabs>
