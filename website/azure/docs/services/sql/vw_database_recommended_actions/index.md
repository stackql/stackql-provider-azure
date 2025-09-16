--- 
title: vw_database_recommended_actions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_database_recommended_actions
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

Creates, updates, deletes, gets or lists a <code>vw_database_recommended_actions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_database_recommended_actions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_database_recommended_actions" /></td></tr>
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
kind as kind,
JSON_EXTRACT(properties, '$.recommendationReason') as "recommendation_reason",
JSON_EXTRACT(properties, '$.validSince') as "valid_since",
JSON_EXTRACT(properties, '$.lastRefresh') as "last_refresh",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.isExecutableAction') as "is_executable_action",
JSON_EXTRACT(properties, '$.isRevertableAction') as "is_revertable_action",
JSON_EXTRACT(properties, '$.isArchivedAction') as "is_archived_action",
JSON_EXTRACT(properties, '$.executeActionStartTime') as "execute_action_start_time",
JSON_EXTRACT(properties, '$.executeActionDuration') as "execute_action_duration",
JSON_EXTRACT(properties, '$.revertActionStartTime') as "revert_action_start_time",
JSON_EXTRACT(properties, '$.revertActionDuration') as "revert_action_duration",
JSON_EXTRACT(properties, '$.executeActionInitiatedBy') as "execute_action_initiated_by",
JSON_EXTRACT(properties, '$.executeActionInitiatedTime') as "execute_action_initiated_time",
JSON_EXTRACT(properties, '$.revertActionInitiatedBy') as "revert_action_initiated_by",
JSON_EXTRACT(properties, '$.revertActionInitiatedTime') as "revert_action_initiated_time",
JSON_EXTRACT(properties, '$.score') as "score",
JSON_EXTRACT(properties, '$.implementationDetails') as "implementation_details",
JSON_EXTRACT(properties, '$.errorDetails') as "error_details",
JSON_EXTRACT(properties, '$.estimatedImpact') as "estimated_impact",
JSON_EXTRACT(properties, '$.observedImpact') as "observed_impact",
JSON_EXTRACT(properties, '$.timeSeries') as "time_series",
JSON_EXTRACT(properties, '$.linkedObjects') as "linked_objects",
JSON_EXTRACT(properties, '$.details') as "details",
subscriptionId,
resourceGroupName,
serverName,
databaseName,
advisorName,
recommendedActionName
FROM azure.sql.database_recommended_actions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND databaseName = 'replace-me' AND advisorName = 'replace-me' AND recommendedActionName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
kind as kind,
json_extract_path_text(properties, '$.recommendationReason') as "recommendation_reason",
json_extract_path_text(properties, '$.validSince') as "valid_since",
json_extract_path_text(properties, '$.lastRefresh') as "last_refresh",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.isExecutableAction') as "is_executable_action",
json_extract_path_text(properties, '$.isRevertableAction') as "is_revertable_action",
json_extract_path_text(properties, '$.isArchivedAction') as "is_archived_action",
json_extract_path_text(properties, '$.executeActionStartTime') as "execute_action_start_time",
json_extract_path_text(properties, '$.executeActionDuration') as "execute_action_duration",
json_extract_path_text(properties, '$.revertActionStartTime') as "revert_action_start_time",
json_extract_path_text(properties, '$.revertActionDuration') as "revert_action_duration",
json_extract_path_text(properties, '$.executeActionInitiatedBy') as "execute_action_initiated_by",
json_extract_path_text(properties, '$.executeActionInitiatedTime') as "execute_action_initiated_time",
json_extract_path_text(properties, '$.revertActionInitiatedBy') as "revert_action_initiated_by",
json_extract_path_text(properties, '$.revertActionInitiatedTime') as "revert_action_initiated_time",
json_extract_path_text(properties, '$.score') as "score",
json_extract_path_text(properties, '$.implementationDetails') as "implementation_details",
json_extract_path_text(properties, '$.errorDetails') as "error_details",
json_extract_path_text(properties, '$.estimatedImpact') as "estimated_impact",
json_extract_path_text(properties, '$.observedImpact') as "observed_impact",
json_extract_path_text(properties, '$.timeSeries') as "time_series",
json_extract_path_text(properties, '$.linkedObjects') as "linked_objects",
json_extract_path_text(properties, '$.details') as "details",
subscriptionId,
resourceGroupName,
serverName,
databaseName,
advisorName,
recommendedActionName
FROM azure.sql.database_recommended_actions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND databaseName = 'replace-me' AND advisorName = 'replace-me' AND recommendedActionName = 'replace-me';
```

</TabItem>
</Tabs>
