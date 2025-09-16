--- 
title: vw_metric_alerts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_metric_alerts
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

Creates, updates, deletes, gets or lists a <code>vw_metric_alerts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_metric_alerts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.monitor.vw_metric_alerts" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.severity') as "severity",
JSON_EXTRACT(properties, '$.enabled') as "enabled",
JSON_EXTRACT(properties, '$.scopes') as "scopes",
JSON_EXTRACT(properties, '$.evaluationFrequency') as "evaluation_frequency",
JSON_EXTRACT(properties, '$.windowSize') as "window_size",
JSON_EXTRACT(properties, '$.targetResourceType') as "target_resource_type",
JSON_EXTRACT(properties, '$.targetResourceRegion') as "target_resource_region",
JSON_EXTRACT(properties, '$.criteria') as "criteria",
JSON_EXTRACT(properties, '$.autoMitigate') as "auto_mitigate",
JSON_EXTRACT(properties, '$.actions') as "actions",
JSON_EXTRACT(properties, '$.lastUpdatedTime') as "last_updated_time",
JSON_EXTRACT(properties, '$.isMigrated') as "is_migrated",
subscriptionId,
resourceGroupName,
ruleName
FROM azure.monitor.metric_alerts
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
tags as tags,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.severity') as "severity",
json_extract_path_text(properties, '$.enabled') as "enabled",
json_extract_path_text(properties, '$.scopes') as "scopes",
json_extract_path_text(properties, '$.evaluationFrequency') as "evaluation_frequency",
json_extract_path_text(properties, '$.windowSize') as "window_size",
json_extract_path_text(properties, '$.targetResourceType') as "target_resource_type",
json_extract_path_text(properties, '$.targetResourceRegion') as "target_resource_region",
json_extract_path_text(properties, '$.criteria') as "criteria",
json_extract_path_text(properties, '$.autoMitigate') as "auto_mitigate",
json_extract_path_text(properties, '$.actions') as "actions",
json_extract_path_text(properties, '$.lastUpdatedTime') as "last_updated_time",
json_extract_path_text(properties, '$.isMigrated') as "is_migrated",
subscriptionId,
resourceGroupName,
ruleName
FROM azure.monitor.metric_alerts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
