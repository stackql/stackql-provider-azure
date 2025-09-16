--- 
title: vw_virtual_machine_scale_set_vms
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_machine_scale_set_vms
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_machine_scale_set_vms</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_machine_scale_set_vms</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_virtual_machine_scale_set_vms" /></td></tr>
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
instanceId as instance_id,
sku as sku,
plan as plan,
resources as resources,
zones as zones,
identity as identity,
etag as etag,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.latestModelApplied') as "latest_model_applied",
JSON_EXTRACT(properties, '$.vmId') as "vm_id",
JSON_EXTRACT(properties, '$.instanceView') as "instance_view",
JSON_EXTRACT(properties, '$.hardwareProfile') as "hardware_profile",
JSON_EXTRACT(properties, '$.storageProfile') as "storage_profile",
JSON_EXTRACT(properties, '$.additionalCapabilities') as "additional_capabilities",
JSON_EXTRACT(properties, '$.osProfile') as "os_profile",
JSON_EXTRACT(properties, '$.securityProfile') as "security_profile",
JSON_EXTRACT(properties, '$.networkProfile') as "network_profile",
JSON_EXTRACT(properties, '$.networkProfileConfiguration') as "network_profile_configuration",
JSON_EXTRACT(properties, '$.diagnosticsProfile') as "diagnostics_profile",
JSON_EXTRACT(properties, '$.availabilitySet') as "availability_set",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.licenseType') as "license_type",
JSON_EXTRACT(properties, '$.modelDefinitionApplied') as "model_definition_applied",
JSON_EXTRACT(properties, '$.protectionPolicy') as "protection_policy",
JSON_EXTRACT(properties, '$.userData') as "user_data",
JSON_EXTRACT(properties, '$.timeCreated') as "time_created",
subscriptionId,
resourceGroupName,
vmScaleSetName,
instanceId,
virtualMachineScaleSetName
FROM azure.compute.virtual_machine_scale_set_vms
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND virtualMachineScaleSetName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
instanceId as instance_id,
sku as sku,
plan as plan,
resources as resources,
zones as zones,
identity as identity,
etag as etag,
type as type,
tags as tags,
json_extract_path_text(properties, '$.latestModelApplied') as "latest_model_applied",
json_extract_path_text(properties, '$.vmId') as "vm_id",
json_extract_path_text(properties, '$.instanceView') as "instance_view",
json_extract_path_text(properties, '$.hardwareProfile') as "hardware_profile",
json_extract_path_text(properties, '$.storageProfile') as "storage_profile",
json_extract_path_text(properties, '$.additionalCapabilities') as "additional_capabilities",
json_extract_path_text(properties, '$.osProfile') as "os_profile",
json_extract_path_text(properties, '$.securityProfile') as "security_profile",
json_extract_path_text(properties, '$.networkProfile') as "network_profile",
json_extract_path_text(properties, '$.networkProfileConfiguration') as "network_profile_configuration",
json_extract_path_text(properties, '$.diagnosticsProfile') as "diagnostics_profile",
json_extract_path_text(properties, '$.availabilitySet') as "availability_set",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.licenseType') as "license_type",
json_extract_path_text(properties, '$.modelDefinitionApplied') as "model_definition_applied",
json_extract_path_text(properties, '$.protectionPolicy') as "protection_policy",
json_extract_path_text(properties, '$.userData') as "user_data",
json_extract_path_text(properties, '$.timeCreated') as "time_created",
subscriptionId,
resourceGroupName,
vmScaleSetName,
instanceId,
virtualMachineScaleSetName
FROM azure.compute.virtual_machine_scale_set_vms
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND virtualMachineScaleSetName = 'replace-me';
```

</TabItem>
</Tabs>
