--- 
title: vw_storage_appliances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_storage_appliances
  - nexus
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

Creates, updates, deletes, gets or lists a <code>vw_storage_appliances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_storage_appliances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.nexus.vw_storage_appliances" /></td></tr>
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
location as location,
extendedLocation as extended_location,
tags as tags,
JSON_EXTRACT(properties, '$.administratorCredentials') as "administrator_credentials",
JSON_EXTRACT(properties, '$.capacity') as "capacity",
JSON_EXTRACT(properties, '$.capacityUsed') as "capacity_used",
JSON_EXTRACT(properties, '$.clusterId') as "cluster_id",
JSON_EXTRACT(properties, '$.detailedStatus') as "detailed_status",
JSON_EXTRACT(properties, '$.detailedStatusMessage') as "detailed_status_message",
JSON_EXTRACT(properties, '$.managementIpv4Address') as "management_ipv4_address",
JSON_EXTRACT(properties, '$.manufacturer') as "manufacturer",
JSON_EXTRACT(properties, '$.model') as "model",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.rackId') as "rack_id",
JSON_EXTRACT(properties, '$.rackSlot') as "rack_slot",
JSON_EXTRACT(properties, '$.remoteVendorManagementFeature') as "remote_vendor_management_feature",
JSON_EXTRACT(properties, '$.remoteVendorManagementStatus') as "remote_vendor_management_status",
JSON_EXTRACT(properties, '$.secretRotationStatus') as "secret_rotation_status",
JSON_EXTRACT(properties, '$.serialNumber') as "serial_number",
JSON_EXTRACT(properties, '$.storageApplianceSkuId') as "storage_appliance_sku_id",
JSON_EXTRACT(properties, '$.version') as "version",
subscriptionId,
resourceGroupName,
storageApplianceName
FROM azure.nexus.storage_appliances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.administratorCredentials') as "administrator_credentials",
json_extract_path_text(properties, '$.capacity') as "capacity",
json_extract_path_text(properties, '$.capacityUsed') as "capacity_used",
json_extract_path_text(properties, '$.clusterId') as "cluster_id",
json_extract_path_text(properties, '$.detailedStatus') as "detailed_status",
json_extract_path_text(properties, '$.detailedStatusMessage') as "detailed_status_message",
json_extract_path_text(properties, '$.managementIpv4Address') as "management_ipv4_address",
json_extract_path_text(properties, '$.manufacturer') as "manufacturer",
json_extract_path_text(properties, '$.model') as "model",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.rackId') as "rack_id",
json_extract_path_text(properties, '$.rackSlot') as "rack_slot",
json_extract_path_text(properties, '$.remoteVendorManagementFeature') as "remote_vendor_management_feature",
json_extract_path_text(properties, '$.remoteVendorManagementStatus') as "remote_vendor_management_status",
json_extract_path_text(properties, '$.secretRotationStatus') as "secret_rotation_status",
json_extract_path_text(properties, '$.serialNumber') as "serial_number",
json_extract_path_text(properties, '$.storageApplianceSkuId') as "storage_appliance_sku_id",
json_extract_path_text(properties, '$.version') as "version",
subscriptionId,
resourceGroupName,
storageApplianceName
FROM azure.nexus.storage_appliances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
