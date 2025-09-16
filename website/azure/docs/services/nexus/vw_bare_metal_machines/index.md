--- 
title: vw_bare_metal_machines
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_bare_metal_machines
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

Creates, updates, deletes, gets or lists a <code>vw_bare_metal_machines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_bare_metal_machines</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.nexus.vw_bare_metal_machines" /></td></tr>
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
JSON_EXTRACT(properties, '$.associatedResourceIds') as "associated_resource_ids",
JSON_EXTRACT(properties, '$.bmcConnectionString') as "bmc_connection_string",
JSON_EXTRACT(properties, '$.bmcCredentials') as "bmc_credentials",
JSON_EXTRACT(properties, '$.bmcMacAddress') as "bmc_mac_address",
JSON_EXTRACT(properties, '$.bootMacAddress') as "boot_mac_address",
JSON_EXTRACT(properties, '$.clusterId') as "cluster_id",
JSON_EXTRACT(properties, '$.cordonStatus') as "cordon_status",
JSON_EXTRACT(properties, '$.detailedStatus') as "detailed_status",
JSON_EXTRACT(properties, '$.detailedStatusMessage') as "detailed_status_message",
JSON_EXTRACT(properties, '$.hardwareInventory') as "hardware_inventory",
JSON_EXTRACT(properties, '$.hardwareValidationStatus') as "hardware_validation_status",
JSON_EXTRACT(properties, '$.hybridAksClustersAssociatedIds') as "hybrid_aks_clusters_associated_ids",
JSON_EXTRACT(properties, '$.kubernetesNodeName') as "kubernetes_node_name",
JSON_EXTRACT(properties, '$.kubernetesVersion') as "kubernetes_version",
JSON_EXTRACT(properties, '$.machineClusterVersion') as "machine_cluster_version",
JSON_EXTRACT(properties, '$.machineDetails') as "machine_details",
JSON_EXTRACT(properties, '$.machineName') as "machine_name",
JSON_EXTRACT(properties, '$.machineRoles') as "machine_roles",
JSON_EXTRACT(properties, '$.machineSkuId') as "machine_sku_id",
JSON_EXTRACT(properties, '$.oamIpv4Address') as "oam_ipv4_address",
JSON_EXTRACT(properties, '$.oamIpv6Address') as "oam_ipv6_address",
JSON_EXTRACT(properties, '$.osImage') as "os_image",
JSON_EXTRACT(properties, '$.powerState') as "power_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.rackId') as "rack_id",
JSON_EXTRACT(properties, '$.rackSlot') as "rack_slot",
JSON_EXTRACT(properties, '$.readyState') as "ready_state",
JSON_EXTRACT(properties, '$.runtimeProtectionStatus') as "runtime_protection_status",
JSON_EXTRACT(properties, '$.secretRotationStatus') as "secret_rotation_status",
JSON_EXTRACT(properties, '$.serialNumber') as "serial_number",
JSON_EXTRACT(properties, '$.serviceTag') as "service_tag",
JSON_EXTRACT(properties, '$.virtualMachinesAssociatedIds') as "virtual_machines_associated_ids",
subscriptionId,
resourceGroupName,
bareMetalMachineName
FROM azure.nexus.bare_metal_machines
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.associatedResourceIds') as "associated_resource_ids",
json_extract_path_text(properties, '$.bmcConnectionString') as "bmc_connection_string",
json_extract_path_text(properties, '$.bmcCredentials') as "bmc_credentials",
json_extract_path_text(properties, '$.bmcMacAddress') as "bmc_mac_address",
json_extract_path_text(properties, '$.bootMacAddress') as "boot_mac_address",
json_extract_path_text(properties, '$.clusterId') as "cluster_id",
json_extract_path_text(properties, '$.cordonStatus') as "cordon_status",
json_extract_path_text(properties, '$.detailedStatus') as "detailed_status",
json_extract_path_text(properties, '$.detailedStatusMessage') as "detailed_status_message",
json_extract_path_text(properties, '$.hardwareInventory') as "hardware_inventory",
json_extract_path_text(properties, '$.hardwareValidationStatus') as "hardware_validation_status",
json_extract_path_text(properties, '$.hybridAksClustersAssociatedIds') as "hybrid_aks_clusters_associated_ids",
json_extract_path_text(properties, '$.kubernetesNodeName') as "kubernetes_node_name",
json_extract_path_text(properties, '$.kubernetesVersion') as "kubernetes_version",
json_extract_path_text(properties, '$.machineClusterVersion') as "machine_cluster_version",
json_extract_path_text(properties, '$.machineDetails') as "machine_details",
json_extract_path_text(properties, '$.machineName') as "machine_name",
json_extract_path_text(properties, '$.machineRoles') as "machine_roles",
json_extract_path_text(properties, '$.machineSkuId') as "machine_sku_id",
json_extract_path_text(properties, '$.oamIpv4Address') as "oam_ipv4_address",
json_extract_path_text(properties, '$.oamIpv6Address') as "oam_ipv6_address",
json_extract_path_text(properties, '$.osImage') as "os_image",
json_extract_path_text(properties, '$.powerState') as "power_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.rackId') as "rack_id",
json_extract_path_text(properties, '$.rackSlot') as "rack_slot",
json_extract_path_text(properties, '$.readyState') as "ready_state",
json_extract_path_text(properties, '$.runtimeProtectionStatus') as "runtime_protection_status",
json_extract_path_text(properties, '$.secretRotationStatus') as "secret_rotation_status",
json_extract_path_text(properties, '$.serialNumber') as "serial_number",
json_extract_path_text(properties, '$.serviceTag') as "service_tag",
json_extract_path_text(properties, '$.virtualMachinesAssociatedIds') as "virtual_machines_associated_ids",
subscriptionId,
resourceGroupName,
bareMetalMachineName
FROM azure.nexus.bare_metal_machines
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
