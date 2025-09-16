--- 
title: vw_interfaces
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_interfaces
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

Creates, updates, deletes, gets or lists a <code>vw_interfaces</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_interfaces</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_interfaces" /></td></tr>
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
etag as etag,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.virtualMachine') as "virtual_machine",
JSON_EXTRACT(properties, '$.networkSecurityGroup') as "network_security_group",
JSON_EXTRACT(properties, '$.privateEndpoint') as "private_endpoint",
JSON_EXTRACT(properties, '$.ipConfigurations') as "ip_configurations",
JSON_EXTRACT(properties, '$.tapConfigurations') as "tap_configurations",
JSON_EXTRACT(properties, '$.dnsSettings') as "dns_settings",
JSON_EXTRACT(properties, '$.macAddress') as "mac_address",
JSON_EXTRACT(properties, '$.primary') as "primary",
JSON_EXTRACT(properties, '$.vnetEncryptionSupported') as "vnet_encryption_supported",
JSON_EXTRACT(properties, '$.enableAcceleratedNetworking') as "enable_accelerated_networking",
JSON_EXTRACT(properties, '$.disableTcpStateTracking') as "disable_tcp_state_tracking",
JSON_EXTRACT(properties, '$.enableIPForwarding') as "enable_ip_forwarding",
JSON_EXTRACT(properties, '$.hostedWorkloads') as "hosted_workloads",
JSON_EXTRACT(properties, '$.dscpConfiguration') as "dscp_configuration",
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.workloadType') as "workload_type",
JSON_EXTRACT(properties, '$.nicType') as "nic_type",
JSON_EXTRACT(properties, '$.privateLinkService') as "private_link_service",
JSON_EXTRACT(properties, '$.migrationPhase') as "migration_phase",
JSON_EXTRACT(properties, '$.auxiliaryMode') as "auxiliary_mode",
JSON_EXTRACT(properties, '$.auxiliarySku') as "auxiliary_sku",
subscriptionId,
resourceGroupName,
networkInterfaceName
FROM azure.network.interfaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
extendedLocation as extended_location,
etag as etag,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.virtualMachine') as "virtual_machine",
json_extract_path_text(properties, '$.networkSecurityGroup') as "network_security_group",
json_extract_path_text(properties, '$.privateEndpoint') as "private_endpoint",
json_extract_path_text(properties, '$.ipConfigurations') as "ip_configurations",
json_extract_path_text(properties, '$.tapConfigurations') as "tap_configurations",
json_extract_path_text(properties, '$.dnsSettings') as "dns_settings",
json_extract_path_text(properties, '$.macAddress') as "mac_address",
json_extract_path_text(properties, '$.primary') as "primary",
json_extract_path_text(properties, '$.vnetEncryptionSupported') as "vnet_encryption_supported",
json_extract_path_text(properties, '$.enableAcceleratedNetworking') as "enable_accelerated_networking",
json_extract_path_text(properties, '$.disableTcpStateTracking') as "disable_tcp_state_tracking",
json_extract_path_text(properties, '$.enableIPForwarding') as "enable_ip_forwarding",
json_extract_path_text(properties, '$.hostedWorkloads') as "hosted_workloads",
json_extract_path_text(properties, '$.dscpConfiguration') as "dscp_configuration",
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.workloadType') as "workload_type",
json_extract_path_text(properties, '$.nicType') as "nic_type",
json_extract_path_text(properties, '$.privateLinkService') as "private_link_service",
json_extract_path_text(properties, '$.migrationPhase') as "migration_phase",
json_extract_path_text(properties, '$.auxiliaryMode') as "auxiliary_mode",
json_extract_path_text(properties, '$.auxiliarySku') as "auxiliary_sku",
subscriptionId,
resourceGroupName,
networkInterfaceName
FROM azure.network.interfaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
