--- 
title: vw_workspaces
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workspaces
  - ml_services
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.vw_workspaces" /></td></tr>
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
location as location,
type as type,
systemData as system_data,
identity as identity,
kind as kind,
sku as sku,
tags as tags,
JSON_EXTRACT(properties, '$.allowPublicAccessWhenBehindVnet') as "allow_public_access_when_behind_vnet",
JSON_EXTRACT(properties, '$.allowRoleAssignmentOnRG') as "allow_role_assignment_on_rg",
JSON_EXTRACT(properties, '$.applicationInsights') as "application_insights",
JSON_EXTRACT(properties, '$.associatedWorkspaces') as "associated_workspaces",
JSON_EXTRACT(properties, '$.containerRegistries') as "container_registries",
JSON_EXTRACT(properties, '$.containerRegistry') as "container_registry",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.discoveryUrl') as "discovery_url",
JSON_EXTRACT(properties, '$.enableDataIsolation') as "enable_data_isolation",
JSON_EXTRACT(properties, '$.enableServiceSideCMKEncryption') as "enable_service_side_cmk_encryption",
JSON_EXTRACT(properties, '$.enableSimplifiedCmk') as "enable_simplified_cmk",
JSON_EXTRACT(properties, '$.enableSoftwareBillOfMaterials') as "enable_software_bill_of_materials",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.existingWorkspaces') as "existing_workspaces",
JSON_EXTRACT(properties, '$.featureStoreSettings') as "feature_store_settings",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.hbiWorkspace') as "hbi_workspace",
JSON_EXTRACT(properties, '$.hubResourceId') as "hub_resource_id",
JSON_EXTRACT(properties, '$.imageBuildCompute') as "image_build_compute",
JSON_EXTRACT(properties, '$.ipAllowlist') as "ip_allowlist",
JSON_EXTRACT(properties, '$.keyVault') as "key_vault",
JSON_EXTRACT(properties, '$.keyVaults') as "key_vaults",
JSON_EXTRACT(properties, '$.managedNetwork') as "managed_network",
JSON_EXTRACT(properties, '$.mlFlowTrackingUri') as "ml_flow_tracking_uri",
JSON_EXTRACT(properties, '$.notebookInfo') as "notebook_info",
JSON_EXTRACT(properties, '$.primaryUserAssignedIdentity') as "primary_user_assigned_identity",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.privateLinkCount') as "private_link_count",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.serverlessComputeSettings') as "serverless_compute_settings",
JSON_EXTRACT(properties, '$.serviceManagedResourcesSettings') as "service_managed_resources_settings",
JSON_EXTRACT(properties, '$.serviceProvisionedResourceGroup') as "service_provisioned_resource_group",
JSON_EXTRACT(properties, '$.sharedPrivateLinkResources') as "shared_private_link_resources",
JSON_EXTRACT(properties, '$.softDeleteRetentionInDays') as "soft_delete_retention_in_days",
JSON_EXTRACT(properties, '$.storageAccount') as "storage_account",
JSON_EXTRACT(properties, '$.storageAccounts') as "storage_accounts",
JSON_EXTRACT(properties, '$.storageHnsEnabled') as "storage_hns_enabled",
JSON_EXTRACT(properties, '$.systemDatastoresAuthMode') as "system_datastores_auth_mode",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.v1LegacyMode') as "v1_legacy_mode",
JSON_EXTRACT(properties, '$.workspaceHubConfig') as "workspace_hub_config",
JSON_EXTRACT(properties, '$.workspaceId') as "workspace_id",
subscriptionId,
resourceGroupName,
workspaceName
FROM azure.ml_services.workspaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
systemData as system_data,
identity as identity,
kind as kind,
sku as sku,
tags as tags,
json_extract_path_text(properties, '$.allowPublicAccessWhenBehindVnet') as "allow_public_access_when_behind_vnet",
json_extract_path_text(properties, '$.allowRoleAssignmentOnRG') as "allow_role_assignment_on_rg",
json_extract_path_text(properties, '$.applicationInsights') as "application_insights",
json_extract_path_text(properties, '$.associatedWorkspaces') as "associated_workspaces",
json_extract_path_text(properties, '$.containerRegistries') as "container_registries",
json_extract_path_text(properties, '$.containerRegistry') as "container_registry",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.discoveryUrl') as "discovery_url",
json_extract_path_text(properties, '$.enableDataIsolation') as "enable_data_isolation",
json_extract_path_text(properties, '$.enableServiceSideCMKEncryption') as "enable_service_side_cmk_encryption",
json_extract_path_text(properties, '$.enableSimplifiedCmk') as "enable_simplified_cmk",
json_extract_path_text(properties, '$.enableSoftwareBillOfMaterials') as "enable_software_bill_of_materials",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.existingWorkspaces') as "existing_workspaces",
json_extract_path_text(properties, '$.featureStoreSettings') as "feature_store_settings",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.hbiWorkspace') as "hbi_workspace",
json_extract_path_text(properties, '$.hubResourceId') as "hub_resource_id",
json_extract_path_text(properties, '$.imageBuildCompute') as "image_build_compute",
json_extract_path_text(properties, '$.ipAllowlist') as "ip_allowlist",
json_extract_path_text(properties, '$.keyVault') as "key_vault",
json_extract_path_text(properties, '$.keyVaults') as "key_vaults",
json_extract_path_text(properties, '$.managedNetwork') as "managed_network",
json_extract_path_text(properties, '$.mlFlowTrackingUri') as "ml_flow_tracking_uri",
json_extract_path_text(properties, '$.notebookInfo') as "notebook_info",
json_extract_path_text(properties, '$.primaryUserAssignedIdentity') as "primary_user_assigned_identity",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.privateLinkCount') as "private_link_count",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.serverlessComputeSettings') as "serverless_compute_settings",
json_extract_path_text(properties, '$.serviceManagedResourcesSettings') as "service_managed_resources_settings",
json_extract_path_text(properties, '$.serviceProvisionedResourceGroup') as "service_provisioned_resource_group",
json_extract_path_text(properties, '$.sharedPrivateLinkResources') as "shared_private_link_resources",
json_extract_path_text(properties, '$.softDeleteRetentionInDays') as "soft_delete_retention_in_days",
json_extract_path_text(properties, '$.storageAccount') as "storage_account",
json_extract_path_text(properties, '$.storageAccounts') as "storage_accounts",
json_extract_path_text(properties, '$.storageHnsEnabled') as "storage_hns_enabled",
json_extract_path_text(properties, '$.systemDatastoresAuthMode') as "system_datastores_auth_mode",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.v1LegacyMode') as "v1_legacy_mode",
json_extract_path_text(properties, '$.workspaceHubConfig') as "workspace_hub_config",
json_extract_path_text(properties, '$.workspaceId') as "workspace_id",
subscriptionId,
resourceGroupName,
workspaceName
FROM azure.ml_services.workspaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
