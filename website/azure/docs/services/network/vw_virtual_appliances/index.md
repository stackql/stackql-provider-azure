--- 
title: vw_virtual_appliances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_appliances
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_appliances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_appliances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_virtual_appliances" /></td></tr>
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
identity as identity,
etag as etag,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.nvaSku') as "nva_sku",
JSON_EXTRACT(properties, '$.addressPrefix') as "address_prefix",
JSON_EXTRACT(properties, '$.bootStrapConfigurationBlobs') as "boot_strap_configuration_blobs",
JSON_EXTRACT(properties, '$.virtualHub') as "virtual_hub",
JSON_EXTRACT(properties, '$.cloudInitConfigurationBlobs') as "cloud_init_configuration_blobs",
JSON_EXTRACT(properties, '$.cloudInitConfiguration') as "cloud_init_configuration",
JSON_EXTRACT(properties, '$.virtualApplianceAsn') as "virtual_appliance_asn",
JSON_EXTRACT(properties, '$.sshPublicKey') as "ssh_public_key",
JSON_EXTRACT(properties, '$.virtualApplianceNics') as "virtual_appliance_nics",
JSON_EXTRACT(properties, '$.networkProfile') as "network_profile",
JSON_EXTRACT(properties, '$.additionalNics') as "additional_nics",
JSON_EXTRACT(properties, '$.internetIngressPublicIps') as "internet_ingress_public_ips",
JSON_EXTRACT(properties, '$.virtualApplianceSites') as "virtual_appliance_sites",
JSON_EXTRACT(properties, '$.virtualApplianceConnections') as "virtual_appliance_connections",
JSON_EXTRACT(properties, '$.inboundSecurityRules') as "inbound_security_rules",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.deploymentType') as "deployment_type",
JSON_EXTRACT(properties, '$.delegation') as "delegation",
JSON_EXTRACT(properties, '$.partnerManagedResource') as "partner_managed_resource",
subscriptionId,
resourceGroupName,
networkVirtualApplianceName
FROM azure.network.virtual_appliances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
identity as identity,
etag as etag,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.nvaSku') as "nva_sku",
json_extract_path_text(properties, '$.addressPrefix') as "address_prefix",
json_extract_path_text(properties, '$.bootStrapConfigurationBlobs') as "boot_strap_configuration_blobs",
json_extract_path_text(properties, '$.virtualHub') as "virtual_hub",
json_extract_path_text(properties, '$.cloudInitConfigurationBlobs') as "cloud_init_configuration_blobs",
json_extract_path_text(properties, '$.cloudInitConfiguration') as "cloud_init_configuration",
json_extract_path_text(properties, '$.virtualApplianceAsn') as "virtual_appliance_asn",
json_extract_path_text(properties, '$.sshPublicKey') as "ssh_public_key",
json_extract_path_text(properties, '$.virtualApplianceNics') as "virtual_appliance_nics",
json_extract_path_text(properties, '$.networkProfile') as "network_profile",
json_extract_path_text(properties, '$.additionalNics') as "additional_nics",
json_extract_path_text(properties, '$.internetIngressPublicIps') as "internet_ingress_public_ips",
json_extract_path_text(properties, '$.virtualApplianceSites') as "virtual_appliance_sites",
json_extract_path_text(properties, '$.virtualApplianceConnections') as "virtual_appliance_connections",
json_extract_path_text(properties, '$.inboundSecurityRules') as "inbound_security_rules",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.deploymentType') as "deployment_type",
json_extract_path_text(properties, '$.delegation') as "delegation",
json_extract_path_text(properties, '$.partnerManagedResource') as "partner_managed_resource",
subscriptionId,
resourceGroupName,
networkVirtualApplianceName
FROM azure.network.virtual_appliances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
