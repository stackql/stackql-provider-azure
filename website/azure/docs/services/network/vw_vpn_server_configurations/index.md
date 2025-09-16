--- 
title: vw_vpn_server_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_vpn_server_configurations
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

Creates, updates, deletes, gets or lists a <code>vw_vpn_server_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_vpn_server_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_vpn_server_configurations" /></td></tr>
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
etag as etag,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.name') as "name",
JSON_EXTRACT(properties, '$.vpnProtocols') as "vpn_protocols",
JSON_EXTRACT(properties, '$.vpnAuthenticationTypes') as "vpn_authentication_types",
JSON_EXTRACT(properties, '$.vpnClientRootCertificates') as "vpn_client_root_certificates",
JSON_EXTRACT(properties, '$.vpnClientRevokedCertificates') as "vpn_client_revoked_certificates",
JSON_EXTRACT(properties, '$.radiusServerRootCertificates') as "radius_server_root_certificates",
JSON_EXTRACT(properties, '$.radiusClientRootCertificates') as "radius_client_root_certificates",
JSON_EXTRACT(properties, '$.vpnClientIpsecPolicies') as "vpn_client_ipsec_policies",
JSON_EXTRACT(properties, '$.radiusServerAddress') as "radius_server_address",
JSON_EXTRACT(properties, '$.radiusServerSecret') as "radius_server_secret",
JSON_EXTRACT(properties, '$.radiusServers') as "radius_servers",
JSON_EXTRACT(properties, '$.aadAuthenticationParameters') as "aad_authentication_parameters",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.p2SVpnGateways') as "p2_s_vpn_gateways",
JSON_EXTRACT(properties, '$.configurationPolicyGroups') as "configuration_policy_groups",
JSON_EXTRACT(properties, '$.etag') as "etag",
subscriptionId,
resourceGroupName,
vpnServerConfigurationName
FROM azure.network.vpn_server_configurations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.name') as "name",
json_extract_path_text(properties, '$.vpnProtocols') as "vpn_protocols",
json_extract_path_text(properties, '$.vpnAuthenticationTypes') as "vpn_authentication_types",
json_extract_path_text(properties, '$.vpnClientRootCertificates') as "vpn_client_root_certificates",
json_extract_path_text(properties, '$.vpnClientRevokedCertificates') as "vpn_client_revoked_certificates",
json_extract_path_text(properties, '$.radiusServerRootCertificates') as "radius_server_root_certificates",
json_extract_path_text(properties, '$.radiusClientRootCertificates') as "radius_client_root_certificates",
json_extract_path_text(properties, '$.vpnClientIpsecPolicies') as "vpn_client_ipsec_policies",
json_extract_path_text(properties, '$.radiusServerAddress') as "radius_server_address",
json_extract_path_text(properties, '$.radiusServerSecret') as "radius_server_secret",
json_extract_path_text(properties, '$.radiusServers') as "radius_servers",
json_extract_path_text(properties, '$.aadAuthenticationParameters') as "aad_authentication_parameters",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.p2SVpnGateways') as "p2_s_vpn_gateways",
json_extract_path_text(properties, '$.configurationPolicyGroups') as "configuration_policy_groups",
json_extract_path_text(properties, '$.etag') as "etag",
subscriptionId,
resourceGroupName,
vpnServerConfigurationName
FROM azure.network.vpn_server_configurations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
