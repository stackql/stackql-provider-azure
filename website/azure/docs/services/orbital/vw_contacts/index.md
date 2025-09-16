--- 
title: vw_contacts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_contacts
  - orbital
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

Creates, updates, deletes, gets or lists a <code>vw_contacts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_contacts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.orbital.vw_contacts" /></td></tr>
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
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.reservationStartTime') as "reservation_start_time",
JSON_EXTRACT(properties, '$.reservationEndTime') as "reservation_end_time",
JSON_EXTRACT(properties, '$.rxStartTime') as "rx_start_time",
JSON_EXTRACT(properties, '$.rxEndTime') as "rx_end_time",
JSON_EXTRACT(properties, '$.txStartTime') as "tx_start_time",
JSON_EXTRACT(properties, '$.txEndTime') as "tx_end_time",
JSON_EXTRACT(properties, '$.errorMessage') as "error_message",
JSON_EXTRACT(properties, '$.maximumElevationDegrees') as "maximum_elevation_degrees",
JSON_EXTRACT(properties, '$.startAzimuthDegrees') as "start_azimuth_degrees",
JSON_EXTRACT(properties, '$.endAzimuthDegrees') as "end_azimuth_degrees",
JSON_EXTRACT(properties, '$.groundStationName') as "ground_station_name",
JSON_EXTRACT(properties, '$.startElevationDegrees') as "start_elevation_degrees",
JSON_EXTRACT(properties, '$.endElevationDegrees') as "end_elevation_degrees",
JSON_EXTRACT(properties, '$.antennaConfiguration') as "antenna_configuration",
JSON_EXTRACT(properties, '$.contactProfile') as "contact_profile",
subscriptionId,
resourceGroupName,
spacecraftName,
contactName
FROM azure.orbital.contacts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND spacecraftName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.reservationStartTime') as "reservation_start_time",
json_extract_path_text(properties, '$.reservationEndTime') as "reservation_end_time",
json_extract_path_text(properties, '$.rxStartTime') as "rx_start_time",
json_extract_path_text(properties, '$.rxEndTime') as "rx_end_time",
json_extract_path_text(properties, '$.txStartTime') as "tx_start_time",
json_extract_path_text(properties, '$.txEndTime') as "tx_end_time",
json_extract_path_text(properties, '$.errorMessage') as "error_message",
json_extract_path_text(properties, '$.maximumElevationDegrees') as "maximum_elevation_degrees",
json_extract_path_text(properties, '$.startAzimuthDegrees') as "start_azimuth_degrees",
json_extract_path_text(properties, '$.endAzimuthDegrees') as "end_azimuth_degrees",
json_extract_path_text(properties, '$.groundStationName') as "ground_station_name",
json_extract_path_text(properties, '$.startElevationDegrees') as "start_elevation_degrees",
json_extract_path_text(properties, '$.endElevationDegrees') as "end_elevation_degrees",
json_extract_path_text(properties, '$.antennaConfiguration') as "antenna_configuration",
json_extract_path_text(properties, '$.contactProfile') as "contact_profile",
subscriptionId,
resourceGroupName,
spacecraftName,
contactName
FROM azure.orbital.contacts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND spacecraftName = 'replace-me';
```

</TabItem>
</Tabs>
