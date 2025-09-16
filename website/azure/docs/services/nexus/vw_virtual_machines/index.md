--- 
title: vw_virtual_machines
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_machines
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_machines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_machines</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.nexus.vw_virtual_machines" /></td></tr>
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
JSON_EXTRACT(properties, '$.adminUsername') as "admin_username",
JSON_EXTRACT(properties, '$.availabilityZone') as "availability_zone",
JSON_EXTRACT(properties, '$.bareMetalMachineId') as "bare_metal_machine_id",
JSON_EXTRACT(properties, '$.bootMethod') as "boot_method",
JSON_EXTRACT(properties, '$.cloudServicesNetworkAttachment') as "cloud_services_network_attachment",
JSON_EXTRACT(properties, '$.clusterId') as "cluster_id",
JSON_EXTRACT(properties, '$.cpuCores') as "cpu_cores",
JSON_EXTRACT(properties, '$.detailedStatus') as "detailed_status",
JSON_EXTRACT(properties, '$.detailedStatusMessage') as "detailed_status_message",
JSON_EXTRACT(properties, '$.isolateEmulatorThread') as "isolate_emulator_thread",
JSON_EXTRACT(properties, '$.memorySizeGB') as "memory_size_gb",
JSON_EXTRACT(properties, '$.networkAttachments') as "network_attachments",
JSON_EXTRACT(properties, '$.networkData') as "network_data",
JSON_EXTRACT(properties, '$.placementHints') as "placement_hints",
JSON_EXTRACT(properties, '$.powerState') as "power_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.sshPublicKeys') as "ssh_public_keys",
JSON_EXTRACT(properties, '$.storageProfile') as "storage_profile",
JSON_EXTRACT(properties, '$.userData') as "user_data",
JSON_EXTRACT(properties, '$.virtioInterface') as "virtio_interface",
JSON_EXTRACT(properties, '$.vmDeviceModel') as "vm_device_model",
JSON_EXTRACT(properties, '$.vmImage') as "vm_image",
JSON_EXTRACT(properties, '$.vmImageRepositoryCredentials') as "vm_image_repository_credentials",
JSON_EXTRACT(properties, '$.volumes') as "volumes",
subscriptionId,
resourceGroupName,
virtualMachineName
FROM azure.nexus.virtual_machines
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.adminUsername') as "admin_username",
json_extract_path_text(properties, '$.availabilityZone') as "availability_zone",
json_extract_path_text(properties, '$.bareMetalMachineId') as "bare_metal_machine_id",
json_extract_path_text(properties, '$.bootMethod') as "boot_method",
json_extract_path_text(properties, '$.cloudServicesNetworkAttachment') as "cloud_services_network_attachment",
json_extract_path_text(properties, '$.clusterId') as "cluster_id",
json_extract_path_text(properties, '$.cpuCores') as "cpu_cores",
json_extract_path_text(properties, '$.detailedStatus') as "detailed_status",
json_extract_path_text(properties, '$.detailedStatusMessage') as "detailed_status_message",
json_extract_path_text(properties, '$.isolateEmulatorThread') as "isolate_emulator_thread",
json_extract_path_text(properties, '$.memorySizeGB') as "memory_size_gb",
json_extract_path_text(properties, '$.networkAttachments') as "network_attachments",
json_extract_path_text(properties, '$.networkData') as "network_data",
json_extract_path_text(properties, '$.placementHints') as "placement_hints",
json_extract_path_text(properties, '$.powerState') as "power_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.sshPublicKeys') as "ssh_public_keys",
json_extract_path_text(properties, '$.storageProfile') as "storage_profile",
json_extract_path_text(properties, '$.userData') as "user_data",
json_extract_path_text(properties, '$.virtioInterface') as "virtio_interface",
json_extract_path_text(properties, '$.vmDeviceModel') as "vm_device_model",
json_extract_path_text(properties, '$.vmImage') as "vm_image",
json_extract_path_text(properties, '$.vmImageRepositoryCredentials') as "vm_image_repository_credentials",
json_extract_path_text(properties, '$.volumes') as "volumes",
subscriptionId,
resourceGroupName,
virtualMachineName
FROM azure.nexus.virtual_machines
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
