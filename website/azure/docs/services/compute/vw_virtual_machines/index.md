--- 
title: vw_virtual_machines
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_machines
  - compute
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_machines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_machines</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_virtual_machines" /></td></tr>
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
plan as plan,
resources as resources,
identity as identity,
zones as zones,
extendedLocation as extended_location,
managedBy as managed_by,
etag as etag,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.hardwareProfile') as "hardware_profile",
JSON_EXTRACT(properties, '$.scheduledEventsPolicy') as "scheduled_events_policy",
JSON_EXTRACT(properties, '$.storageProfile') as "storage_profile",
JSON_EXTRACT(properties, '$.additionalCapabilities') as "additional_capabilities",
JSON_EXTRACT(properties, '$.osProfile') as "os_profile",
JSON_EXTRACT(properties, '$.networkProfile') as "network_profile",
JSON_EXTRACT(properties, '$.securityProfile') as "security_profile",
JSON_EXTRACT(properties, '$.diagnosticsProfile') as "diagnostics_profile",
JSON_EXTRACT(properties, '$.availabilitySet') as "availability_set",
JSON_EXTRACT(properties, '$.virtualMachineScaleSet') as "virtual_machine_scale_set",
JSON_EXTRACT(properties, '$.proximityPlacementGroup') as "proximity_placement_group",
JSON_EXTRACT(properties, '$.priority') as "priority",
JSON_EXTRACT(properties, '$.evictionPolicy') as "eviction_policy",
JSON_EXTRACT(properties, '$.billingProfile') as "billing_profile",
JSON_EXTRACT(properties, '$.host') as "host",
JSON_EXTRACT(properties, '$.hostGroup') as "host_group",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.instanceView') as "instance_view",
JSON_EXTRACT(properties, '$.licenseType') as "license_type",
JSON_EXTRACT(properties, '$.vmId') as "vm_id",
JSON_EXTRACT(properties, '$.extensionsTimeBudget') as "extensions_time_budget",
JSON_EXTRACT(properties, '$.platformFaultDomain') as "platform_fault_domain",
JSON_EXTRACT(properties, '$.scheduledEventsProfile') as "scheduled_events_profile",
JSON_EXTRACT(properties, '$.userData') as "user_data",
JSON_EXTRACT(properties, '$.capacityReservation') as "capacity_reservation",
JSON_EXTRACT(properties, '$.applicationProfile') as "application_profile",
JSON_EXTRACT(properties, '$.timeCreated') as "time_created",
subscriptionId,
resourceGroupName,
vmName
FROM azure.compute.virtual_machines
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
plan as plan,
resources as resources,
identity as identity,
zones as zones,
extendedLocation as extended_location,
managedBy as managed_by,
etag as etag,
type as type,
tags as tags,
json_extract_path_text(properties, '$.hardwareProfile') as "hardware_profile",
json_extract_path_text(properties, '$.scheduledEventsPolicy') as "scheduled_events_policy",
json_extract_path_text(properties, '$.storageProfile') as "storage_profile",
json_extract_path_text(properties, '$.additionalCapabilities') as "additional_capabilities",
json_extract_path_text(properties, '$.osProfile') as "os_profile",
json_extract_path_text(properties, '$.networkProfile') as "network_profile",
json_extract_path_text(properties, '$.securityProfile') as "security_profile",
json_extract_path_text(properties, '$.diagnosticsProfile') as "diagnostics_profile",
json_extract_path_text(properties, '$.availabilitySet') as "availability_set",
json_extract_path_text(properties, '$.virtualMachineScaleSet') as "virtual_machine_scale_set",
json_extract_path_text(properties, '$.proximityPlacementGroup') as "proximity_placement_group",
json_extract_path_text(properties, '$.priority') as "priority",
json_extract_path_text(properties, '$.evictionPolicy') as "eviction_policy",
json_extract_path_text(properties, '$.billingProfile') as "billing_profile",
json_extract_path_text(properties, '$.host') as "host",
json_extract_path_text(properties, '$.hostGroup') as "host_group",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.instanceView') as "instance_view",
json_extract_path_text(properties, '$.licenseType') as "license_type",
json_extract_path_text(properties, '$.vmId') as "vm_id",
json_extract_path_text(properties, '$.extensionsTimeBudget') as "extensions_time_budget",
json_extract_path_text(properties, '$.platformFaultDomain') as "platform_fault_domain",
json_extract_path_text(properties, '$.scheduledEventsProfile') as "scheduled_events_profile",
json_extract_path_text(properties, '$.userData') as "user_data",
json_extract_path_text(properties, '$.capacityReservation') as "capacity_reservation",
json_extract_path_text(properties, '$.applicationProfile') as "application_profile",
json_extract_path_text(properties, '$.timeCreated') as "time_created",
subscriptionId,
resourceGroupName,
vmName
FROM azure.compute.virtual_machines
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
