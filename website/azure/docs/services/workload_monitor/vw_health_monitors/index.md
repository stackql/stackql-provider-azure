--- 
title: vw_health_monitors
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_health_monitors
  - workload_monitor
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

Creates, updates, deletes, gets or lists a <code>vw_health_monitors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_health_monitors</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.workload_monitor.vw_health_monitors" /></td></tr>
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
JSON_EXTRACT(properties, '$.monitorName') as "monitor_name",
JSON_EXTRACT(properties, '$.monitorType') as "monitor_type",
JSON_EXTRACT(properties, '$.monitoredObject') as "monitored_object",
JSON_EXTRACT(properties, '$.parentMonitorName') as "parent_monitor_name",
JSON_EXTRACT(properties, '$.previousMonitorState') as "previous_monitor_state",
JSON_EXTRACT(properties, '$.currentMonitorState') as "current_monitor_state",
JSON_EXTRACT(properties, '$.evaluationTimestamp') as "evaluation_timestamp",
JSON_EXTRACT(properties, '$.currentStateFirstObservedTimestamp') as "current_state_first_observed_timestamp",
JSON_EXTRACT(properties, '$.lastReportedTimestamp') as "last_reported_timestamp",
JSON_EXTRACT(properties, '$.evidence') as "evidence",
JSON_EXTRACT(properties, '$.monitorConfiguration') as "monitor_configuration",
subscriptionId,
resourceGroupName,
providerName,
resourceCollectionName,
resourceName,
monitorId
FROM azure.workload_monitor.health_monitors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND providerName = 'replace-me' AND resourceCollectionName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.monitorName') as "monitor_name",
json_extract_path_text(properties, '$.monitorType') as "monitor_type",
json_extract_path_text(properties, '$.monitoredObject') as "monitored_object",
json_extract_path_text(properties, '$.parentMonitorName') as "parent_monitor_name",
json_extract_path_text(properties, '$.previousMonitorState') as "previous_monitor_state",
json_extract_path_text(properties, '$.currentMonitorState') as "current_monitor_state",
json_extract_path_text(properties, '$.evaluationTimestamp') as "evaluation_timestamp",
json_extract_path_text(properties, '$.currentStateFirstObservedTimestamp') as "current_state_first_observed_timestamp",
json_extract_path_text(properties, '$.lastReportedTimestamp') as "last_reported_timestamp",
json_extract_path_text(properties, '$.evidence') as "evidence",
json_extract_path_text(properties, '$.monitorConfiguration') as "monitor_configuration",
subscriptionId,
resourceGroupName,
providerName,
resourceCollectionName,
resourceName,
monitorId
FROM azure.workload_monitor.health_monitors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND providerName = 'replace-me' AND resourceCollectionName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
