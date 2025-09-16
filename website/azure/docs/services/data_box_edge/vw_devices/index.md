--- 
title: vw_devices
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_devices
  - data_box_edge
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

Creates, updates, deletes, gets or lists a <code>vw_devices</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_devices</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_box_edge.vw_devices" /></td></tr>
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
sku as sku,
etag as etag,
identity as identity,
kind as kind,
systemData as system_data,
JSON_EXTRACT(properties, '$.systemData') as "system_data",
JSON_EXTRACT(properties, '$.dataBoxEdgeDeviceStatus') as "data_box_edge_device_status",
JSON_EXTRACT(properties, '$.serialNumber') as "serial_number",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.modelDescription') as "model_description",
JSON_EXTRACT(properties, '$.deviceType') as "device_type",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.culture') as "culture",
JSON_EXTRACT(properties, '$.deviceModel') as "device_model",
JSON_EXTRACT(properties, '$.deviceSoftwareVersion') as "device_software_version",
JSON_EXTRACT(properties, '$.deviceLocalCapacity') as "device_local_capacity",
JSON_EXTRACT(properties, '$.timeZone') as "time_zone",
JSON_EXTRACT(properties, '$.deviceHcsVersion') as "device_hcs_version",
JSON_EXTRACT(properties, '$.configuredRoleTypes') as "configured_role_types",
JSON_EXTRACT(properties, '$.nodeCount') as "node_count",
JSON_EXTRACT(properties, '$.resourceMoveDetails') as "resource_move_details",
JSON_EXTRACT(properties, '$.edgeProfile') as "edge_profile",
JSON_EXTRACT(properties, '$.dataResidency') as "data_residency",
JSON_EXTRACT(properties, '$.kubernetesWorkloadProfile') as "kubernetes_workload_profile",
subscriptionId,
resourceGroupName,
deviceName
FROM azure.data_box_edge.devices
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
sku as sku,
etag as etag,
identity as identity,
kind as kind,
systemData as system_data,
json_extract_path_text(properties, '$.systemData') as "system_data",
json_extract_path_text(properties, '$.dataBoxEdgeDeviceStatus') as "data_box_edge_device_status",
json_extract_path_text(properties, '$.serialNumber') as "serial_number",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.modelDescription') as "model_description",
json_extract_path_text(properties, '$.deviceType') as "device_type",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.culture') as "culture",
json_extract_path_text(properties, '$.deviceModel') as "device_model",
json_extract_path_text(properties, '$.deviceSoftwareVersion') as "device_software_version",
json_extract_path_text(properties, '$.deviceLocalCapacity') as "device_local_capacity",
json_extract_path_text(properties, '$.timeZone') as "time_zone",
json_extract_path_text(properties, '$.deviceHcsVersion') as "device_hcs_version",
json_extract_path_text(properties, '$.configuredRoleTypes') as "configured_role_types",
json_extract_path_text(properties, '$.nodeCount') as "node_count",
json_extract_path_text(properties, '$.resourceMoveDetails') as "resource_move_details",
json_extract_path_text(properties, '$.edgeProfile') as "edge_profile",
json_extract_path_text(properties, '$.dataResidency') as "data_residency",
json_extract_path_text(properties, '$.kubernetesWorkloadProfile') as "kubernetes_workload_profile",
subscriptionId,
resourceGroupName,
deviceName
FROM azure.data_box_edge.devices
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
