--- 
title: vw_events
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_events
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

Creates, updates, deletes, gets or lists a <code>vw_events</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_events</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_replication.vw_events" /></td></tr>
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
JSON_EXTRACT(properties, '$.resourceType') as "resource_type",
JSON_EXTRACT(properties, '$.resourceName') as "resource_name",
JSON_EXTRACT(properties, '$.eventType') as "event_type",
JSON_EXTRACT(properties, '$.eventName') as "event_name",
JSON_EXTRACT(properties, '$.timeOfOccurrence') as "time_of_occurrence",
JSON_EXTRACT(properties, '$.severity') as "severity",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.correlationId') as "correlation_id",
JSON_EXTRACT(properties, '$.healthErrors') as "health_errors",
JSON_EXTRACT(properties, '$.customProperties') as "custom_properties",
subscriptionId,
resourceGroupName,
vaultName,
eventName
FROM azure.data_replication.events
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
json_extract_path_text(properties, '$.resourceType') as "resource_type",
json_extract_path_text(properties, '$.resourceName') as "resource_name",
json_extract_path_text(properties, '$.eventType') as "event_type",
json_extract_path_text(properties, '$.eventName') as "event_name",
json_extract_path_text(properties, '$.timeOfOccurrence') as "time_of_occurrence",
json_extract_path_text(properties, '$.severity') as "severity",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.correlationId') as "correlation_id",
json_extract_path_text(properties, '$.healthErrors') as "health_errors",
json_extract_path_text(properties, '$.customProperties') as "custom_properties",
subscriptionId,
resourceGroupName,
vaultName,
eventName
FROM azure.data_replication.events
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
</Tabs>
