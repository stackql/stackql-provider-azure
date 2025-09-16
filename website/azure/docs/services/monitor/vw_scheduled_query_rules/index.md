--- 
title: vw_scheduled_query_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_scheduled_query_rules
  - monitor
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

Creates, updates, deletes, gets or lists a <code>vw_scheduled_query_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_scheduled_query_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.monitor.vw_scheduled_query_rules" /></td></tr>
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
identity as identity,
tags as tags,
kind as kind,
etag as etag,
systemData as system_data,
JSON_EXTRACT(properties, '$.createdWithApiVersion') as "created_with_api_version",
JSON_EXTRACT(properties, '$.isLegacyLogAnalyticsRule') as "is_legacy_log_analytics_rule",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.severity') as "severity",
JSON_EXTRACT(properties, '$.enabled') as "enabled",
JSON_EXTRACT(properties, '$.scopes') as "scopes",
JSON_EXTRACT(properties, '$.evaluationFrequency') as "evaluation_frequency",
JSON_EXTRACT(properties, '$.windowSize') as "window_size",
JSON_EXTRACT(properties, '$.overrideQueryTimeRange') as "override_query_time_range",
JSON_EXTRACT(properties, '$.targetResourceTypes') as "target_resource_types",
JSON_EXTRACT(properties, '$.criteria') as "criteria",
JSON_EXTRACT(properties, '$.muteActionsDuration') as "mute_actions_duration",
JSON_EXTRACT(properties, '$.actions') as "actions",
JSON_EXTRACT(properties, '$.isWorkspaceAlertsStorageConfigured') as "is_workspace_alerts_storage_configured",
JSON_EXTRACT(properties, '$.checkWorkspaceAlertsStorageConfigured') as "check_workspace_alerts_storage_configured",
JSON_EXTRACT(properties, '$.skipQueryValidation') as "skip_query_validation",
JSON_EXTRACT(properties, '$.autoMitigate') as "auto_mitigate",
JSON_EXTRACT(properties, '$.ruleResolveConfiguration') as "rule_resolve_configuration",
subscriptionId,
resourceGroupName,
ruleName
FROM azure.monitor.scheduled_query_rules
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
identity as identity,
tags as tags,
kind as kind,
etag as etag,
systemData as system_data,
json_extract_path_text(properties, '$.createdWithApiVersion') as "created_with_api_version",
json_extract_path_text(properties, '$.isLegacyLogAnalyticsRule') as "is_legacy_log_analytics_rule",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.severity') as "severity",
json_extract_path_text(properties, '$.enabled') as "enabled",
json_extract_path_text(properties, '$.scopes') as "scopes",
json_extract_path_text(properties, '$.evaluationFrequency') as "evaluation_frequency",
json_extract_path_text(properties, '$.windowSize') as "window_size",
json_extract_path_text(properties, '$.overrideQueryTimeRange') as "override_query_time_range",
json_extract_path_text(properties, '$.targetResourceTypes') as "target_resource_types",
json_extract_path_text(properties, '$.criteria') as "criteria",
json_extract_path_text(properties, '$.muteActionsDuration') as "mute_actions_duration",
json_extract_path_text(properties, '$.actions') as "actions",
json_extract_path_text(properties, '$.isWorkspaceAlertsStorageConfigured') as "is_workspace_alerts_storage_configured",
json_extract_path_text(properties, '$.checkWorkspaceAlertsStorageConfigured') as "check_workspace_alerts_storage_configured",
json_extract_path_text(properties, '$.skipQueryValidation') as "skip_query_validation",
json_extract_path_text(properties, '$.autoMitigate') as "auto_mitigate",
json_extract_path_text(properties, '$.ruleResolveConfiguration') as "rule_resolve_configuration",
subscriptionId,
resourceGroupName,
ruleName
FROM azure.monitor.scheduled_query_rules
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
