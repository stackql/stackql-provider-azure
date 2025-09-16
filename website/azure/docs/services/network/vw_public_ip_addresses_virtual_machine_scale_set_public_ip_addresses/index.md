--- 
title: vw_public_ip_addresses_virtual_machine_scale_set_public_ip_addresses
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_public_ip_addresses_virtual_machine_scale_set_public_ip_addresses
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_public_ip_addresses_virtual_machine_scale_set_public_ip_addresses</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_public_ip_addresses_virtual_machine_scale_set_public_ip_addresses</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_public_ip_addresses_virtual_machine_scale_set_public_ip_addresses" /></td></tr>
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
extendedLocation as extended_location,
sku as sku,
etag as etag,
zones as zones,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.publicIPAllocationMethod') as "public_ip_allocation_method",
JSON_EXTRACT(properties, '$.publicIPAddressVersion') as "public_ip_address_version",
JSON_EXTRACT(properties, '$.ipConfiguration') as "ip_configuration",
JSON_EXTRACT(properties, '$.dnsSettings') as "dns_settings",
JSON_EXTRACT(properties, '$.ddosSettings') as "ddos_settings",
JSON_EXTRACT(properties, '$.ipTags') as "ip_tags",
JSON_EXTRACT(properties, '$.ipAddress') as "ip_address",
JSON_EXTRACT(properties, '$.publicIPPrefix') as "public_ip_prefix",
JSON_EXTRACT(properties, '$.idleTimeoutInMinutes') as "idle_timeout_in_minutes",
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.servicePublicIPAddress') as "service_public_ip_address",
JSON_EXTRACT(properties, '$.natGateway') as "nat_gateway",
JSON_EXTRACT(properties, '$.migrationPhase') as "migration_phase",
JSON_EXTRACT(properties, '$.linkedPublicIPAddress') as "linked_public_ip_address",
JSON_EXTRACT(properties, '$.deleteOption') as "delete_option",
subscriptionId,
resourceGroupName,
virtualMachineScaleSetName,
virtualmachineIndex,
networkInterfaceName,
ipConfigurationName,
publicIpAddressName
FROM azure.network.public_ip_addresses_virtual_machine_scale_set_public_ip_addresses
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND virtualMachineScaleSetName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
extendedLocation as extended_location,
sku as sku,
etag as etag,
zones as zones,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.publicIPAllocationMethod') as "public_ip_allocation_method",
json_extract_path_text(properties, '$.publicIPAddressVersion') as "public_ip_address_version",
json_extract_path_text(properties, '$.ipConfiguration') as "ip_configuration",
json_extract_path_text(properties, '$.dnsSettings') as "dns_settings",
json_extract_path_text(properties, '$.ddosSettings') as "ddos_settings",
json_extract_path_text(properties, '$.ipTags') as "ip_tags",
json_extract_path_text(properties, '$.ipAddress') as "ip_address",
json_extract_path_text(properties, '$.publicIPPrefix') as "public_ip_prefix",
json_extract_path_text(properties, '$.idleTimeoutInMinutes') as "idle_timeout_in_minutes",
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.servicePublicIPAddress') as "service_public_ip_address",
json_extract_path_text(properties, '$.natGateway') as "nat_gateway",
json_extract_path_text(properties, '$.migrationPhase') as "migration_phase",
json_extract_path_text(properties, '$.linkedPublicIPAddress') as "linked_public_ip_address",
json_extract_path_text(properties, '$.deleteOption') as "delete_option",
subscriptionId,
resourceGroupName,
virtualMachineScaleSetName,
virtualmachineIndex,
networkInterfaceName,
ipConfigurationName,
publicIpAddressName
FROM azure.network.public_ip_addresses_virtual_machine_scale_set_public_ip_addresses
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND virtualMachineScaleSetName = 'replace-me';
```

</TabItem>
</Tabs>
