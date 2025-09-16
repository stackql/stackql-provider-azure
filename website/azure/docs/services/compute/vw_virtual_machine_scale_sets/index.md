--- 
title: vw_virtual_machine_scale_sets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_machine_scale_sets
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_machine_scale_sets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_machine_scale_sets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_virtual_machine_scale_sets" /></td></tr>
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
sku as sku,
plan as plan,
identity as identity,
zones as zones,
extendedLocation as extended_location,
etag as etag,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.upgradePolicy') as "upgrade_policy",
JSON_EXTRACT(properties, '$.scheduledEventsPolicy') as "scheduled_events_policy",
JSON_EXTRACT(properties, '$.automaticRepairsPolicy') as "automatic_repairs_policy",
JSON_EXTRACT(properties, '$.virtualMachineProfile') as "virtual_machine_profile",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.overprovision') as "overprovision",
JSON_EXTRACT(properties, '$.doNotRunExtensionsOnOverprovisionedVMs') as "do_not_run_extensions_on_overprovisioned_vms",
JSON_EXTRACT(properties, '$.uniqueId') as "unique_id",
JSON_EXTRACT(properties, '$.singlePlacementGroup') as "single_placement_group",
JSON_EXTRACT(properties, '$.zoneBalance') as "zone_balance",
JSON_EXTRACT(properties, '$.platformFaultDomainCount') as "platform_fault_domain_count",
JSON_EXTRACT(properties, '$.proximityPlacementGroup') as "proximity_placement_group",
JSON_EXTRACT(properties, '$.hostGroup') as "host_group",
JSON_EXTRACT(properties, '$.additionalCapabilities') as "additional_capabilities",
JSON_EXTRACT(properties, '$.scaleInPolicy') as "scale_in_policy",
JSON_EXTRACT(properties, '$.orchestrationMode') as "orchestration_mode",
JSON_EXTRACT(properties, '$.spotRestorePolicy') as "spot_restore_policy",
JSON_EXTRACT(properties, '$.priorityMixPolicy') as "priority_mix_policy",
JSON_EXTRACT(properties, '$.timeCreated') as "time_created",
JSON_EXTRACT(properties, '$.constrainedMaximumCapacity') as "constrained_maximum_capacity",
JSON_EXTRACT(properties, '$.resiliencyPolicy') as "resiliency_policy",
JSON_EXTRACT(properties, '$.zonalPlatformFaultDomainAlignMode') as "zonal_platform_fault_domain_align_mode",
JSON_EXTRACT(properties, '$.skuProfile') as "sku_profile",
subscriptionId,
resourceGroupName,
vmScaleSetName
FROM azure.compute.virtual_machine_scale_sets
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
sku as sku,
plan as plan,
identity as identity,
zones as zones,
extendedLocation as extended_location,
etag as etag,
type as type,
tags as tags,
json_extract_path_text(properties, '$.upgradePolicy') as "upgrade_policy",
json_extract_path_text(properties, '$.scheduledEventsPolicy') as "scheduled_events_policy",
json_extract_path_text(properties, '$.automaticRepairsPolicy') as "automatic_repairs_policy",
json_extract_path_text(properties, '$.virtualMachineProfile') as "virtual_machine_profile",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.overprovision') as "overprovision",
json_extract_path_text(properties, '$.doNotRunExtensionsOnOverprovisionedVMs') as "do_not_run_extensions_on_overprovisioned_vms",
json_extract_path_text(properties, '$.uniqueId') as "unique_id",
json_extract_path_text(properties, '$.singlePlacementGroup') as "single_placement_group",
json_extract_path_text(properties, '$.zoneBalance') as "zone_balance",
json_extract_path_text(properties, '$.platformFaultDomainCount') as "platform_fault_domain_count",
json_extract_path_text(properties, '$.proximityPlacementGroup') as "proximity_placement_group",
json_extract_path_text(properties, '$.hostGroup') as "host_group",
json_extract_path_text(properties, '$.additionalCapabilities') as "additional_capabilities",
json_extract_path_text(properties, '$.scaleInPolicy') as "scale_in_policy",
json_extract_path_text(properties, '$.orchestrationMode') as "orchestration_mode",
json_extract_path_text(properties, '$.spotRestorePolicy') as "spot_restore_policy",
json_extract_path_text(properties, '$.priorityMixPolicy') as "priority_mix_policy",
json_extract_path_text(properties, '$.timeCreated') as "time_created",
json_extract_path_text(properties, '$.constrainedMaximumCapacity') as "constrained_maximum_capacity",
json_extract_path_text(properties, '$.resiliencyPolicy') as "resiliency_policy",
json_extract_path_text(properties, '$.zonalPlatformFaultDomainAlignMode') as "zonal_platform_fault_domain_align_mode",
json_extract_path_text(properties, '$.skuProfile') as "sku_profile",
subscriptionId,
resourceGroupName,
vmScaleSetName
FROM azure.compute.virtual_machine_scale_sets
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
