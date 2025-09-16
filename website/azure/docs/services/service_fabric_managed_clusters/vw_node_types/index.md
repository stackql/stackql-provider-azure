--- 
title: vw_node_types
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_node_types
  - service_fabric_managed_clusters
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

Creates, updates, deletes, gets or lists a <code>vw_node_types</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_node_types</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_fabric_managed_clusters.vw_node_types" /></td></tr>
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
tags as tags,
systemData as system_data,
sku as sku,
JSON_EXTRACT(properties, '$.isPrimary') as "is_primary",
JSON_EXTRACT(properties, '$.vmInstanceCount') as "vm_instance_count",
JSON_EXTRACT(properties, '$.dataDiskSizeGB') as "data_disk_size_gb",
JSON_EXTRACT(properties, '$.dataDiskType') as "data_disk_type",
JSON_EXTRACT(properties, '$.dataDiskLetter') as "data_disk_letter",
JSON_EXTRACT(properties, '$.placementProperties') as "placement_properties",
JSON_EXTRACT(properties, '$.capacities') as "capacities",
JSON_EXTRACT(properties, '$.applicationPorts') as "application_ports",
JSON_EXTRACT(properties, '$.ephemeralPorts') as "ephemeral_ports",
JSON_EXTRACT(properties, '$.vmSize') as "vm_size",
JSON_EXTRACT(properties, '$.vmImagePublisher') as "vm_image_publisher",
JSON_EXTRACT(properties, '$.vmImageOffer') as "vm_image_offer",
JSON_EXTRACT(properties, '$.vmImageSku') as "vm_image_sku",
JSON_EXTRACT(properties, '$.vmImageVersion') as "vm_image_version",
JSON_EXTRACT(properties, '$.vmSecrets') as "vm_secrets",
JSON_EXTRACT(properties, '$.vmExtensions') as "vm_extensions",
JSON_EXTRACT(properties, '$.vmManagedIdentity') as "vm_managed_identity",
JSON_EXTRACT(properties, '$.isStateless') as "is_stateless",
JSON_EXTRACT(properties, '$.multiplePlacementGroups') as "multiple_placement_groups",
JSON_EXTRACT(properties, '$.frontendConfigurations') as "frontend_configurations",
JSON_EXTRACT(properties, '$.networkSecurityRules') as "network_security_rules",
JSON_EXTRACT(properties, '$.additionalDataDisks') as "additional_data_disks",
JSON_EXTRACT(properties, '$.enableEncryptionAtHost') as "enable_encryption_at_host",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.enableAcceleratedNetworking') as "enable_accelerated_networking",
JSON_EXTRACT(properties, '$.useDefaultPublicLoadBalancer') as "use_default_public_load_balancer",
JSON_EXTRACT(properties, '$.useTempDataDisk') as "use_temp_data_disk",
JSON_EXTRACT(properties, '$.enableOverProvisioning') as "enable_over_provisioning",
JSON_EXTRACT(properties, '$.zones') as "zones",
JSON_EXTRACT(properties, '$.isSpotVM') as "is_spot_vm",
JSON_EXTRACT(properties, '$.hostGroupId') as "host_group_id",
JSON_EXTRACT(properties, '$.useEphemeralOSDisk') as "use_ephemeral_os_disk",
JSON_EXTRACT(properties, '$.spotRestoreTimeout') as "spot_restore_timeout",
JSON_EXTRACT(properties, '$.evictionPolicy') as "eviction_policy",
JSON_EXTRACT(properties, '$.vmImageResourceId') as "vm_image_resource_id",
JSON_EXTRACT(properties, '$.subnetId') as "subnet_id",
JSON_EXTRACT(properties, '$.vmSetupActions') as "vm_setup_actions",
JSON_EXTRACT(properties, '$.securityType') as "security_type",
JSON_EXTRACT(properties, '$.secureBootEnabled') as "secure_boot_enabled",
JSON_EXTRACT(properties, '$.enableNodePublicIP') as "enable_node_public_ip",
JSON_EXTRACT(properties, '$.enableNodePublicIPv6') as "enable_node_public_ipv6",
JSON_EXTRACT(properties, '$.vmSharedGalleryImageId') as "vm_shared_gallery_image_id",
JSON_EXTRACT(properties, '$.natGatewayId') as "nat_gateway_id",
JSON_EXTRACT(properties, '$.natConfigurations') as "nat_configurations",
JSON_EXTRACT(properties, '$.vmImagePlan') as "vm_image_plan",
JSON_EXTRACT(properties, '$.serviceArtifactReferenceId') as "service_artifact_reference_id",
JSON_EXTRACT(properties, '$.dscpConfigurationId') as "dscp_configuration_id",
JSON_EXTRACT(properties, '$.additionalNetworkInterfaceConfigurations') as "additional_network_interface_configurations",
JSON_EXTRACT(properties, '$.computerNamePrefix') as "computer_name_prefix",
JSON_EXTRACT(properties, '$.vmApplications') as "vm_applications",
subscriptionId,
resourceGroupName,
clusterName,
nodeTypeName
FROM azure.service_fabric_managed_clusters.node_types
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
tags as tags,
systemData as system_data,
sku as sku,
json_extract_path_text(properties, '$.isPrimary') as "is_primary",
json_extract_path_text(properties, '$.vmInstanceCount') as "vm_instance_count",
json_extract_path_text(properties, '$.dataDiskSizeGB') as "data_disk_size_gb",
json_extract_path_text(properties, '$.dataDiskType') as "data_disk_type",
json_extract_path_text(properties, '$.dataDiskLetter') as "data_disk_letter",
json_extract_path_text(properties, '$.placementProperties') as "placement_properties",
json_extract_path_text(properties, '$.capacities') as "capacities",
json_extract_path_text(properties, '$.applicationPorts') as "application_ports",
json_extract_path_text(properties, '$.ephemeralPorts') as "ephemeral_ports",
json_extract_path_text(properties, '$.vmSize') as "vm_size",
json_extract_path_text(properties, '$.vmImagePublisher') as "vm_image_publisher",
json_extract_path_text(properties, '$.vmImageOffer') as "vm_image_offer",
json_extract_path_text(properties, '$.vmImageSku') as "vm_image_sku",
json_extract_path_text(properties, '$.vmImageVersion') as "vm_image_version",
json_extract_path_text(properties, '$.vmSecrets') as "vm_secrets",
json_extract_path_text(properties, '$.vmExtensions') as "vm_extensions",
json_extract_path_text(properties, '$.vmManagedIdentity') as "vm_managed_identity",
json_extract_path_text(properties, '$.isStateless') as "is_stateless",
json_extract_path_text(properties, '$.multiplePlacementGroups') as "multiple_placement_groups",
json_extract_path_text(properties, '$.frontendConfigurations') as "frontend_configurations",
json_extract_path_text(properties, '$.networkSecurityRules') as "network_security_rules",
json_extract_path_text(properties, '$.additionalDataDisks') as "additional_data_disks",
json_extract_path_text(properties, '$.enableEncryptionAtHost') as "enable_encryption_at_host",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.enableAcceleratedNetworking') as "enable_accelerated_networking",
json_extract_path_text(properties, '$.useDefaultPublicLoadBalancer') as "use_default_public_load_balancer",
json_extract_path_text(properties, '$.useTempDataDisk') as "use_temp_data_disk",
json_extract_path_text(properties, '$.enableOverProvisioning') as "enable_over_provisioning",
json_extract_path_text(properties, '$.zones') as "zones",
json_extract_path_text(properties, '$.isSpotVM') as "is_spot_vm",
json_extract_path_text(properties, '$.hostGroupId') as "host_group_id",
json_extract_path_text(properties, '$.useEphemeralOSDisk') as "use_ephemeral_os_disk",
json_extract_path_text(properties, '$.spotRestoreTimeout') as "spot_restore_timeout",
json_extract_path_text(properties, '$.evictionPolicy') as "eviction_policy",
json_extract_path_text(properties, '$.vmImageResourceId') as "vm_image_resource_id",
json_extract_path_text(properties, '$.subnetId') as "subnet_id",
json_extract_path_text(properties, '$.vmSetupActions') as "vm_setup_actions",
json_extract_path_text(properties, '$.securityType') as "security_type",
json_extract_path_text(properties, '$.secureBootEnabled') as "secure_boot_enabled",
json_extract_path_text(properties, '$.enableNodePublicIP') as "enable_node_public_ip",
json_extract_path_text(properties, '$.enableNodePublicIPv6') as "enable_node_public_ipv6",
json_extract_path_text(properties, '$.vmSharedGalleryImageId') as "vm_shared_gallery_image_id",
json_extract_path_text(properties, '$.natGatewayId') as "nat_gateway_id",
json_extract_path_text(properties, '$.natConfigurations') as "nat_configurations",
json_extract_path_text(properties, '$.vmImagePlan') as "vm_image_plan",
json_extract_path_text(properties, '$.serviceArtifactReferenceId') as "service_artifact_reference_id",
json_extract_path_text(properties, '$.dscpConfigurationId') as "dscp_configuration_id",
json_extract_path_text(properties, '$.additionalNetworkInterfaceConfigurations') as "additional_network_interface_configurations",
json_extract_path_text(properties, '$.computerNamePrefix') as "computer_name_prefix",
json_extract_path_text(properties, '$.vmApplications') as "vm_applications",
subscriptionId,
resourceGroupName,
clusterName,
nodeTypeName
FROM azure.service_fabric_managed_clusters.node_types
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
</Tabs>
