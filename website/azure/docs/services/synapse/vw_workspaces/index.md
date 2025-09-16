--- 
title: vw_workspaces
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workspaces
  - synapse
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

Creates, updates, deletes, gets or lists a <code>vw_workspaces</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workspaces</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.vw_workspaces" /></td></tr>
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
tags as tags,
identity as identity,
JSON_EXTRACT(properties, '$.defaultDataLakeStorage') as "default_data_lake_storage",
JSON_EXTRACT(properties, '$.sqlAdministratorLoginPassword') as "sql_administrator_login_password",
JSON_EXTRACT(properties, '$.managedResourceGroupName') as "managed_resource_group_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.sqlAdministratorLogin') as "sql_administrator_login",
JSON_EXTRACT(properties, '$.virtualNetworkProfile') as "virtual_network_profile",
JSON_EXTRACT(properties, '$.connectivityEndpoints') as "connectivity_endpoints",
JSON_EXTRACT(properties, '$.managedVirtualNetwork') as "managed_virtual_network",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.workspaceUID') as "workspace_uid",
JSON_EXTRACT(properties, '$.extraProperties') as "extra_properties",
JSON_EXTRACT(properties, '$.managedVirtualNetworkSettings') as "managed_virtual_network_settings",
JSON_EXTRACT(properties, '$.workspaceRepositoryConfiguration') as "workspace_repository_configuration",
JSON_EXTRACT(properties, '$.purviewConfiguration') as "purview_configuration",
JSON_EXTRACT(properties, '$.adlaResourceId') as "adla_resource_id",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.cspWorkspaceAdminProperties') as "csp_workspace_admin_properties",
JSON_EXTRACT(properties, '$.settings') as "settings",
JSON_EXTRACT(properties, '$.azureADOnlyAuthentication') as "azure_ad_only_authentication",
JSON_EXTRACT(properties, '$.trustedServiceBypassEnabled') as "trusted_service_bypass_enabled",
subscriptionId,
resourceGroupName,
workspaceName
FROM azure.synapse.workspaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
json_extract_path_text(properties, '$.defaultDataLakeStorage') as "default_data_lake_storage",
json_extract_path_text(properties, '$.sqlAdministratorLoginPassword') as "sql_administrator_login_password",
json_extract_path_text(properties, '$.managedResourceGroupName') as "managed_resource_group_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.sqlAdministratorLogin') as "sql_administrator_login",
json_extract_path_text(properties, '$.virtualNetworkProfile') as "virtual_network_profile",
json_extract_path_text(properties, '$.connectivityEndpoints') as "connectivity_endpoints",
json_extract_path_text(properties, '$.managedVirtualNetwork') as "managed_virtual_network",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.workspaceUID') as "workspace_uid",
json_extract_path_text(properties, '$.extraProperties') as "extra_properties",
json_extract_path_text(properties, '$.managedVirtualNetworkSettings') as "managed_virtual_network_settings",
json_extract_path_text(properties, '$.workspaceRepositoryConfiguration') as "workspace_repository_configuration",
json_extract_path_text(properties, '$.purviewConfiguration') as "purview_configuration",
json_extract_path_text(properties, '$.adlaResourceId') as "adla_resource_id",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.cspWorkspaceAdminProperties') as "csp_workspace_admin_properties",
json_extract_path_text(properties, '$.settings') as "settings",
json_extract_path_text(properties, '$.azureADOnlyAuthentication') as "azure_ad_only_authentication",
json_extract_path_text(properties, '$.trustedServiceBypassEnabled') as "trusted_service_bypass_enabled",
subscriptionId,
resourceGroupName,
workspaceName
FROM azure.synapse.workspaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
