--- 
title: vw_flow_logs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_flow_logs
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

Creates, updates, deletes, gets or lists a <code>vw_flow_logs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_flow_logs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_flow_logs" /></td></tr>
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
etag as etag,
identity as identity,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.targetResourceId') as "target_resource_id",
JSON_EXTRACT(properties, '$.targetResourceGuid') as "target_resource_guid",
JSON_EXTRACT(properties, '$.storageId') as "storage_id",
JSON_EXTRACT(properties, '$.enabledFilteringCriteria') as "enabled_filtering_criteria",
JSON_EXTRACT(properties, '$.enabled') as "enabled",
JSON_EXTRACT(properties, '$.retentionPolicy') as "retention_policy",
JSON_EXTRACT(properties, '$.format') as "format",
JSON_EXTRACT(properties, '$.flowAnalyticsConfiguration') as "flow_analytics_configuration",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
networkWatcherName,
flowLogName
FROM azure.network.flow_logs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkWatcherName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
identity as identity,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.targetResourceId') as "target_resource_id",
json_extract_path_text(properties, '$.targetResourceGuid') as "target_resource_guid",
json_extract_path_text(properties, '$.storageId') as "storage_id",
json_extract_path_text(properties, '$.enabledFilteringCriteria') as "enabled_filtering_criteria",
json_extract_path_text(properties, '$.enabled') as "enabled",
json_extract_path_text(properties, '$.retentionPolicy') as "retention_policy",
json_extract_path_text(properties, '$.format') as "format",
json_extract_path_text(properties, '$.flowAnalyticsConfiguration') as "flow_analytics_configuration",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
networkWatcherName,
flowLogName
FROM azure.network.flow_logs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkWatcherName = 'replace-me';
```

</TabItem>
</Tabs>
