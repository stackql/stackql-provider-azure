--- 
title: vw_devices
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_devices
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

Creates, updates, deletes, gets or lists a <code>vw_devices</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_devices</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_8000_series.vw_devices" /></td></tr>
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
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.activationTime') as "activation_time",
JSON_EXTRACT(properties, '$.culture') as "culture",
JSON_EXTRACT(properties, '$.deviceDescription') as "device_description",
JSON_EXTRACT(properties, '$.deviceSoftwareVersion') as "device_software_version",
JSON_EXTRACT(properties, '$.friendlySoftwareName') as "friendly_software_name",
JSON_EXTRACT(properties, '$.deviceConfigurationStatus') as "device_configuration_status",
JSON_EXTRACT(properties, '$.targetIqn') as "target_iqn",
JSON_EXTRACT(properties, '$.modelDescription') as "model_description",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.serialNumber') as "serial_number",
JSON_EXTRACT(properties, '$.deviceType') as "device_type",
JSON_EXTRACT(properties, '$.activeController') as "active_controller",
JSON_EXTRACT(properties, '$.friendlySoftwareVersion') as "friendly_software_version",
JSON_EXTRACT(properties, '$.availableLocalStorageInBytes') as "available_local_storage_in_bytes",
JSON_EXTRACT(properties, '$.availableTieredStorageInBytes') as "available_tiered_storage_in_bytes",
JSON_EXTRACT(properties, '$.provisionedTieredStorageInBytes') as "provisioned_tiered_storage_in_bytes",
JSON_EXTRACT(properties, '$.provisionedLocalStorageInBytes') as "provisioned_local_storage_in_bytes",
JSON_EXTRACT(properties, '$.provisionedVolumeSizeInBytes') as "provisioned_volume_size_in_bytes",
JSON_EXTRACT(properties, '$.usingStorageInBytes') as "using_storage_in_bytes",
JSON_EXTRACT(properties, '$.totalTieredStorageInBytes') as "total_tiered_storage_in_bytes",
JSON_EXTRACT(properties, '$.agentGroupVersion') as "agent_group_version",
JSON_EXTRACT(properties, '$.networkInterfaceCardCount') as "network_interface_card_count",
JSON_EXTRACT(properties, '$.deviceLocation') as "device_location",
JSON_EXTRACT(properties, '$.virtualMachineApiType') as "virtual_machine_api_type",
JSON_EXTRACT(properties, '$.details') as "details",
JSON_EXTRACT(properties, '$.rolloverDetails') as "rollover_details",
subscriptionId,
resourceGroupName,
managerName,
deviceName
FROM azure_extras.storsimple_8000_series.devices
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
kind as kind,
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.activationTime') as "activation_time",
json_extract_path_text(properties, '$.culture') as "culture",
json_extract_path_text(properties, '$.deviceDescription') as "device_description",
json_extract_path_text(properties, '$.deviceSoftwareVersion') as "device_software_version",
json_extract_path_text(properties, '$.friendlySoftwareName') as "friendly_software_name",
json_extract_path_text(properties, '$.deviceConfigurationStatus') as "device_configuration_status",
json_extract_path_text(properties, '$.targetIqn') as "target_iqn",
json_extract_path_text(properties, '$.modelDescription') as "model_description",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.serialNumber') as "serial_number",
json_extract_path_text(properties, '$.deviceType') as "device_type",
json_extract_path_text(properties, '$.activeController') as "active_controller",
json_extract_path_text(properties, '$.friendlySoftwareVersion') as "friendly_software_version",
json_extract_path_text(properties, '$.availableLocalStorageInBytes') as "available_local_storage_in_bytes",
json_extract_path_text(properties, '$.availableTieredStorageInBytes') as "available_tiered_storage_in_bytes",
json_extract_path_text(properties, '$.provisionedTieredStorageInBytes') as "provisioned_tiered_storage_in_bytes",
json_extract_path_text(properties, '$.provisionedLocalStorageInBytes') as "provisioned_local_storage_in_bytes",
json_extract_path_text(properties, '$.provisionedVolumeSizeInBytes') as "provisioned_volume_size_in_bytes",
json_extract_path_text(properties, '$.usingStorageInBytes') as "using_storage_in_bytes",
json_extract_path_text(properties, '$.totalTieredStorageInBytes') as "total_tiered_storage_in_bytes",
json_extract_path_text(properties, '$.agentGroupVersion') as "agent_group_version",
json_extract_path_text(properties, '$.networkInterfaceCardCount') as "network_interface_card_count",
json_extract_path_text(properties, '$.deviceLocation') as "device_location",
json_extract_path_text(properties, '$.virtualMachineApiType') as "virtual_machine_api_type",
json_extract_path_text(properties, '$.details') as "details",
json_extract_path_text(properties, '$.rolloverDetails') as "rollover_details",
subscriptionId,
resourceGroupName,
managerName,
deviceName
FROM azure_extras.storsimple_8000_series.devices
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me';
```

</TabItem>
</Tabs>
