--- 
title: vw_replication_events
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replication_events
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

Creates, updates, deletes, gets or lists a <code>vw_replication_events</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replication_events</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.vw_replication_events" /></td></tr>
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
JSON_EXTRACT(properties, '$.eventCode') as "event_code",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.eventType') as "event_type",
JSON_EXTRACT(properties, '$.affectedObjectFriendlyName') as "affected_object_friendly_name",
JSON_EXTRACT(properties, '$.affectedObjectCorrelationId') as "affected_object_correlation_id",
JSON_EXTRACT(properties, '$.severity') as "severity",
JSON_EXTRACT(properties, '$.timeOfOccurrence') as "time_of_occurrence",
JSON_EXTRACT(properties, '$.fabricId') as "fabric_id",
JSON_EXTRACT(properties, '$.providerSpecificDetails') as "provider_specific_details",
JSON_EXTRACT(properties, '$.eventSpecificDetails') as "event_specific_details",
JSON_EXTRACT(properties, '$.healthErrors') as "health_errors",
subscriptionId,
resourceGroupName,
resourceName,
eventName
FROM azure.recovery_services_site_recovery.replication_events
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
json_extract_path_text(properties, '$.eventCode') as "event_code",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.eventType') as "event_type",
json_extract_path_text(properties, '$.affectedObjectFriendlyName') as "affected_object_friendly_name",
json_extract_path_text(properties, '$.affectedObjectCorrelationId') as "affected_object_correlation_id",
json_extract_path_text(properties, '$.severity') as "severity",
json_extract_path_text(properties, '$.timeOfOccurrence') as "time_of_occurrence",
json_extract_path_text(properties, '$.fabricId') as "fabric_id",
json_extract_path_text(properties, '$.providerSpecificDetails') as "provider_specific_details",
json_extract_path_text(properties, '$.eventSpecificDetails') as "event_specific_details",
json_extract_path_text(properties, '$.healthErrors') as "health_errors",
subscriptionId,
resourceGroupName,
resourceName,
eventName
FROM azure.recovery_services_site_recovery.replication_events
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
