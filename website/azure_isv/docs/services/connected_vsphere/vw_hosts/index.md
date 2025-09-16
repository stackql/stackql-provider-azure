--- 
title: vw_hosts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_hosts
  - connected_vsphere
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_hosts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_hosts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.connected_vsphere.vw_hosts" /></td></tr>
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
extendedLocation as extended_location,
systemData as system_data,
tags as tags,
type as type,
kind as kind,
JSON_EXTRACT(properties, '$.uuid') as "uuid",
JSON_EXTRACT(properties, '$.vCenterId') as "v_center_id",
JSON_EXTRACT(properties, '$.moRefId') as "mo_ref_id",
JSON_EXTRACT(properties, '$.inventoryItemId') as "inventory_item_id",
JSON_EXTRACT(properties, '$.moName') as "mo_name",
JSON_EXTRACT(properties, '$.statuses') as "statuses",
JSON_EXTRACT(properties, '$.customResourceName') as "custom_resource_name",
JSON_EXTRACT(properties, '$.overallMemoryUsageGB') as "overall_memory_usage_gb",
JSON_EXTRACT(properties, '$.memorySizeGB') as "memory_size_gb",
JSON_EXTRACT(properties, '$.overallCpuUsageMHz') as "overall_cpu_usage_m_hz",
JSON_EXTRACT(properties, '$.cpuMhz') as "cpu_mhz",
JSON_EXTRACT(properties, '$.datastoreIds') as "datastore_ids",
JSON_EXTRACT(properties, '$.networkIds') as "network_ids",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
hostName
FROM azure_isv.connected_vsphere.hosts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
extendedLocation as extended_location,
systemData as system_data,
tags as tags,
type as type,
kind as kind,
json_extract_path_text(properties, '$.uuid') as "uuid",
json_extract_path_text(properties, '$.vCenterId') as "v_center_id",
json_extract_path_text(properties, '$.moRefId') as "mo_ref_id",
json_extract_path_text(properties, '$.inventoryItemId') as "inventory_item_id",
json_extract_path_text(properties, '$.moName') as "mo_name",
json_extract_path_text(properties, '$.statuses') as "statuses",
json_extract_path_text(properties, '$.customResourceName') as "custom_resource_name",
json_extract_path_text(properties, '$.overallMemoryUsageGB') as "overall_memory_usage_gb",
json_extract_path_text(properties, '$.memorySizeGB') as "memory_size_gb",
json_extract_path_text(properties, '$.overallCpuUsageMHz') as "overall_cpu_usage_m_hz",
json_extract_path_text(properties, '$.cpuMhz') as "cpu_mhz",
json_extract_path_text(properties, '$.datastoreIds') as "datastore_ids",
json_extract_path_text(properties, '$.networkIds') as "network_ids",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
hostName
FROM azure_isv.connected_vsphere.hosts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
