--- 
title: vw_schedules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_schedules
  - lab_services
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

Creates, updates, deletes, gets or lists a <code>vw_schedules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_schedules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.lab_services.vw_schedules" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.startAt') as "start_at",
JSON_EXTRACT(properties, '$.stopAt') as "stop_at",
JSON_EXTRACT(properties, '$.recurrencePattern') as "recurrence_pattern",
JSON_EXTRACT(properties, '$.timeZoneId') as "time_zone_id",
JSON_EXTRACT(properties, '$.notes') as "notes",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.resourceOperationError') as "resource_operation_error",
subscriptionId,
resourceGroupName,
labName,
scheduleName
FROM azure.lab_services.schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.startAt') as "start_at",
json_extract_path_text(properties, '$.stopAt') as "stop_at",
json_extract_path_text(properties, '$.recurrencePattern') as "recurrence_pattern",
json_extract_path_text(properties, '$.timeZoneId') as "time_zone_id",
json_extract_path_text(properties, '$.notes') as "notes",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resourceOperationError') as "resource_operation_error",
subscriptionId,
resourceGroupName,
labName,
scheduleName
FROM azure.lab_services.schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me';
```

</TabItem>
</Tabs>
