--- 
title: vw_host_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_host_pools
  - desktop_virtualization
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

Creates, updates, deletes, gets or lists a <code>vw_host_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_host_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.desktop_virtualization.vw_host_pools" /></td></tr>
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
managedBy as managed_by,
kind as kind,
etag as etag,
identity as identity,
sku as sku,
plan as plan,
JSON_EXTRACT(properties, '$.objectId') as "object_id",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.hostPoolType') as "host_pool_type",
JSON_EXTRACT(properties, '$.personalDesktopAssignmentType') as "personal_desktop_assignment_type",
JSON_EXTRACT(properties, '$.customRdpProperty') as "custom_rdp_property",
JSON_EXTRACT(properties, '$.maxSessionLimit') as "max_session_limit",
JSON_EXTRACT(properties, '$.loadBalancerType') as "load_balancer_type",
JSON_EXTRACT(properties, '$.ring') as "ring",
JSON_EXTRACT(properties, '$.validationEnvironment') as "validation_environment",
JSON_EXTRACT(properties, '$.registrationInfo') as "registration_info",
JSON_EXTRACT(properties, '$.vmTemplate') as "vm_template",
JSON_EXTRACT(properties, '$.managementType') as "management_type",
JSON_EXTRACT(properties, '$.applicationGroupReferences') as "application_group_references",
JSON_EXTRACT(properties, '$.appAttachPackageReferences') as "app_attach_package_references",
JSON_EXTRACT(properties, '$.ssoadfsAuthority') as "ssoadfs_authority",
JSON_EXTRACT(properties, '$.ssoClientId') as "sso_client_id",
JSON_EXTRACT(properties, '$.ssoClientSecretKeyVaultPath') as "sso_client_secret_key_vault_path",
JSON_EXTRACT(properties, '$.ssoSecretType') as "sso_secret_type",
JSON_EXTRACT(properties, '$.preferredAppGroupType') as "preferred_app_group_type",
JSON_EXTRACT(properties, '$.startVMOnConnect') as "start_vm_on_connect",
JSON_EXTRACT(properties, '$.cloudPcResource') as "cloud_pc_resource",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.agentUpdate') as "agent_update",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.managedPrivateUDP') as "managed_private_udp",
JSON_EXTRACT(properties, '$.directUDP') as "direct_udp",
JSON_EXTRACT(properties, '$.publicUDP') as "public_udp",
JSON_EXTRACT(properties, '$.relayUDP') as "relay_udp",
subscriptionId,
resourceGroupName,
hostPoolName
FROM azure.desktop_virtualization.host_pools
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
managedBy as managed_by,
kind as kind,
etag as etag,
identity as identity,
sku as sku,
plan as plan,
json_extract_path_text(properties, '$.objectId') as "object_id",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.hostPoolType') as "host_pool_type",
json_extract_path_text(properties, '$.personalDesktopAssignmentType') as "personal_desktop_assignment_type",
json_extract_path_text(properties, '$.customRdpProperty') as "custom_rdp_property",
json_extract_path_text(properties, '$.maxSessionLimit') as "max_session_limit",
json_extract_path_text(properties, '$.loadBalancerType') as "load_balancer_type",
json_extract_path_text(properties, '$.ring') as "ring",
json_extract_path_text(properties, '$.validationEnvironment') as "validation_environment",
json_extract_path_text(properties, '$.registrationInfo') as "registration_info",
json_extract_path_text(properties, '$.vmTemplate') as "vm_template",
json_extract_path_text(properties, '$.managementType') as "management_type",
json_extract_path_text(properties, '$.applicationGroupReferences') as "application_group_references",
json_extract_path_text(properties, '$.appAttachPackageReferences') as "app_attach_package_references",
json_extract_path_text(properties, '$.ssoadfsAuthority') as "ssoadfs_authority",
json_extract_path_text(properties, '$.ssoClientId') as "sso_client_id",
json_extract_path_text(properties, '$.ssoClientSecretKeyVaultPath') as "sso_client_secret_key_vault_path",
json_extract_path_text(properties, '$.ssoSecretType') as "sso_secret_type",
json_extract_path_text(properties, '$.preferredAppGroupType') as "preferred_app_group_type",
json_extract_path_text(properties, '$.startVMOnConnect') as "start_vm_on_connect",
json_extract_path_text(properties, '$.cloudPcResource') as "cloud_pc_resource",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.agentUpdate') as "agent_update",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.managedPrivateUDP') as "managed_private_udp",
json_extract_path_text(properties, '$.directUDP') as "direct_udp",
json_extract_path_text(properties, '$.publicUDP') as "public_udp",
json_extract_path_text(properties, '$.relayUDP') as "relay_udp",
subscriptionId,
resourceGroupName,
hostPoolName
FROM azure.desktop_virtualization.host_pools
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
