--- 
title: vw_connection_monitors
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_connection_monitors
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_connection_monitors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_connection_monitors</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_connection_monitors" /></td></tr>
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
etag as etag,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.monitoringStatus') as "monitoring_status",
JSON_EXTRACT(properties, '$.connectionMonitorType') as "connection_monitor_type",
JSON_EXTRACT(properties, '$.source') as "source",
JSON_EXTRACT(properties, '$.destination') as "destination",
JSON_EXTRACT(properties, '$.autoStart') as "auto_start",
JSON_EXTRACT(properties, '$.monitoringIntervalInSeconds') as "monitoring_interval_in_seconds",
JSON_EXTRACT(properties, '$.endpoints') as "endpoints",
JSON_EXTRACT(properties, '$.testConfigurations') as "test_configurations",
JSON_EXTRACT(properties, '$.testGroups') as "test_groups",
JSON_EXTRACT(properties, '$.outputs') as "outputs",
JSON_EXTRACT(properties, '$.notes') as "notes",
subscriptionId,
resourceGroupName,
networkWatcherName,
connectionMonitorName
FROM azure.network.connection_monitors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkWatcherName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
etag as etag,
type as type,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.monitoringStatus') as "monitoring_status",
json_extract_path_text(properties, '$.connectionMonitorType') as "connection_monitor_type",
json_extract_path_text(properties, '$.source') as "source",
json_extract_path_text(properties, '$.destination') as "destination",
json_extract_path_text(properties, '$.autoStart') as "auto_start",
json_extract_path_text(properties, '$.monitoringIntervalInSeconds') as "monitoring_interval_in_seconds",
json_extract_path_text(properties, '$.endpoints') as "endpoints",
json_extract_path_text(properties, '$.testConfigurations') as "test_configurations",
json_extract_path_text(properties, '$.testGroups') as "test_groups",
json_extract_path_text(properties, '$.outputs') as "outputs",
json_extract_path_text(properties, '$.notes') as "notes",
subscriptionId,
resourceGroupName,
networkWatcherName,
connectionMonitorName
FROM azure.network.connection_monitors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkWatcherName = 'replace-me';
```

</TabItem>
</Tabs>
