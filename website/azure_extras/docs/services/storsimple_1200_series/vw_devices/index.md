--- 
title: vw_devices
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_devices
  - storsimple_1200_series
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_1200_series.vw_devices" /></td></tr>
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
JSON_EXTRACT(properties, '$.activationTime') as "activation_time",
JSON_EXTRACT(properties, '$.allowedDeviceOperations') as "allowed_device_operations",
JSON_EXTRACT(properties, '$.culture') as "culture",
JSON_EXTRACT(properties, '$.deviceCapabilities') as "device_capabilities",
JSON_EXTRACT(properties, '$.deviceDescription') as "device_description",
JSON_EXTRACT(properties, '$.domainName') as "domain_name",
JSON_EXTRACT(properties, '$.deviceSoftwareVersion') as "device_software_version",
JSON_EXTRACT(properties, '$.friendlySoftwareName') as "friendly_software_name",
JSON_EXTRACT(properties, '$.deviceConfigurationStatus') as "device_configuration_status",
JSON_EXTRACT(properties, '$.modelDescription') as "model_description",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.details') as "details",
subscriptionId,
resourceGroupName,
managerName,
deviceName
FROM azure_extras.storsimple_1200_series.devices
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.activationTime') as "activation_time",
json_extract_path_text(properties, '$.allowedDeviceOperations') as "allowed_device_operations",
json_extract_path_text(properties, '$.culture') as "culture",
json_extract_path_text(properties, '$.deviceCapabilities') as "device_capabilities",
json_extract_path_text(properties, '$.deviceDescription') as "device_description",
json_extract_path_text(properties, '$.domainName') as "domain_name",
json_extract_path_text(properties, '$.deviceSoftwareVersion') as "device_software_version",
json_extract_path_text(properties, '$.friendlySoftwareName') as "friendly_software_name",
json_extract_path_text(properties, '$.deviceConfigurationStatus') as "device_configuration_status",
json_extract_path_text(properties, '$.modelDescription') as "model_description",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.details') as "details",
subscriptionId,
resourceGroupName,
managerName,
deviceName
FROM azure_extras.storsimple_1200_series.devices
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me';
```

</TabItem>
</Tabs>
