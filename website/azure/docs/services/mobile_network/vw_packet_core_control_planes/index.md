--- 
title: vw_packet_core_control_planes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_packet_core_control_planes
  - mobile_network
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

Creates, updates, deletes, gets or lists a <code>vw_packet_core_control_planes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_packet_core_control_planes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mobile_network.vw_packet_core_control_planes" /></td></tr>
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
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.installation') as "installation",
JSON_EXTRACT(properties, '$.sites') as "sites",
JSON_EXTRACT(properties, '$.platform') as "platform",
JSON_EXTRACT(properties, '$.coreNetworkTechnology') as "core_network_technology",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.installedVersion') as "installed_version",
JSON_EXTRACT(properties, '$.rollbackVersion') as "rollback_version",
JSON_EXTRACT(properties, '$.controlPlaneAccessInterface') as "control_plane_access_interface",
JSON_EXTRACT(properties, '$.controlPlaneAccessVirtualIpv4Addresses') as "control_plane_access_virtual_ipv4_addresses",
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.ueMtu') as "ue_mtu",
JSON_EXTRACT(properties, '$.localDiagnosticsAccess') as "local_diagnostics_access",
JSON_EXTRACT(properties, '$.diagnosticsUpload') as "diagnostics_upload",
JSON_EXTRACT(properties, '$.eventHub') as "event_hub",
JSON_EXTRACT(properties, '$.signaling') as "signaling",
JSON_EXTRACT(properties, '$.interopSettings') as "interop_settings",
JSON_EXTRACT(properties, '$.homeNetworkPrivateKeysProvisioning') as "home_network_private_keys_provisioning",
JSON_EXTRACT(properties, '$.userConsent') as "user_consent",
subscriptionId,
resourceGroupName,
packetCoreControlPlaneName
FROM azure.mobile_network.packet_core_control_planes
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.installation') as "installation",
json_extract_path_text(properties, '$.sites') as "sites",
json_extract_path_text(properties, '$.platform') as "platform",
json_extract_path_text(properties, '$.coreNetworkTechnology') as "core_network_technology",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.installedVersion') as "installed_version",
json_extract_path_text(properties, '$.rollbackVersion') as "rollback_version",
json_extract_path_text(properties, '$.controlPlaneAccessInterface') as "control_plane_access_interface",
json_extract_path_text(properties, '$.controlPlaneAccessVirtualIpv4Addresses') as "control_plane_access_virtual_ipv4_addresses",
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.ueMtu') as "ue_mtu",
json_extract_path_text(properties, '$.localDiagnosticsAccess') as "local_diagnostics_access",
json_extract_path_text(properties, '$.diagnosticsUpload') as "diagnostics_upload",
json_extract_path_text(properties, '$.eventHub') as "event_hub",
json_extract_path_text(properties, '$.signaling') as "signaling",
json_extract_path_text(properties, '$.interopSettings') as "interop_settings",
json_extract_path_text(properties, '$.homeNetworkPrivateKeysProvisioning') as "home_network_private_keys_provisioning",
json_extract_path_text(properties, '$.userConsent') as "user_consent",
subscriptionId,
resourceGroupName,
packetCoreControlPlaneName
FROM azure.mobile_network.packet_core_control_planes
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
