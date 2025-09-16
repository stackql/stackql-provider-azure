--- 
title: vw_monitoring_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_monitoring_settings
  - spring_apps
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

Creates, updates, deletes, gets or lists a <code>vw_monitoring_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_monitoring_settings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.spring_apps.vw_monitoring_settings" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.traceEnabled') as "trace_enabled",
JSON_EXTRACT(properties, '$.appInsightsInstrumentationKey') as "app_insights_instrumentation_key",
JSON_EXTRACT(properties, '$.appInsightsSamplingRate') as "app_insights_sampling_rate",
JSON_EXTRACT(properties, '$.appInsightsAgentVersions') as "app_insights_agent_versions",
subscriptionId,
resourceGroupName,
serviceName
FROM azure.spring_apps.monitoring_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.traceEnabled') as "trace_enabled",
json_extract_path_text(properties, '$.appInsightsInstrumentationKey') as "app_insights_instrumentation_key",
json_extract_path_text(properties, '$.appInsightsSamplingRate') as "app_insights_sampling_rate",
json_extract_path_text(properties, '$.appInsightsAgentVersions') as "app_insights_agent_versions",
subscriptionId,
resourceGroupName,
serviceName
FROM azure.spring_apps.monitoring_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
