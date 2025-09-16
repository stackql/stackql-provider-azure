--- 
title: vw_devices_update_summaries
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_devices_update_summaries
  - storsimple_8000_series
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_devices_update_summaries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_devices_update_summaries</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_8000_series.vw_devices_update_summaries" /></td></tr>
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
kind as kind,
JSON_EXTRACT(properties, '$.regularUpdatesAvailable') as "regular_updates_available",
JSON_EXTRACT(properties, '$.maintenanceModeUpdatesAvailable') as "maintenance_mode_updates_available",
JSON_EXTRACT(properties, '$.isUpdateInProgress') as "is_update_in_progress",
JSON_EXTRACT(properties, '$.lastUpdatedTime') as "last_updated_time",
subscriptionId,
resourceGroupName,
managerName,
deviceName
FROM azure_extras.storsimple_8000_series.devices_update_summaries
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
kind as kind,
json_extract_path_text(properties, '$.regularUpdatesAvailable') as "regular_updates_available",
json_extract_path_text(properties, '$.maintenanceModeUpdatesAvailable') as "maintenance_mode_updates_available",
json_extract_path_text(properties, '$.isUpdateInProgress') as "is_update_in_progress",
json_extract_path_text(properties, '$.lastUpdatedTime') as "last_updated_time",
subscriptionId,
resourceGroupName,
managerName,
deviceName
FROM azure_extras.storsimple_8000_series.devices_update_summaries
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
</Tabs>
