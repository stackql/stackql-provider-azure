--- 
title: vw_vaults
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_vaults
  - key_vault
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

Creates, updates, deletes, gets or lists a <code>vw_vaults</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_vaults</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.key_vault.vw_vaults" /></td></tr>
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
tags as tags,
systemData as system_data,
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.accessPolicies') as "access_policies",
JSON_EXTRACT(properties, '$.vaultUri') as "vault_uri",
JSON_EXTRACT(properties, '$.hsmPoolResourceId') as "hsm_pool_resource_id",
JSON_EXTRACT(properties, '$.enabledForDeployment') as "enabled_for_deployment",
JSON_EXTRACT(properties, '$.enabledForDiskEncryption') as "enabled_for_disk_encryption",
JSON_EXTRACT(properties, '$.enabledForTemplateDeployment') as "enabled_for_template_deployment",
JSON_EXTRACT(properties, '$.enableSoftDelete') as "enable_soft_delete",
JSON_EXTRACT(properties, '$.softDeleteRetentionInDays') as "soft_delete_retention_in_days",
JSON_EXTRACT(properties, '$.enableRbacAuthorization') as "enable_rbac_authorization",
JSON_EXTRACT(properties, '$.createMode') as "create_mode",
JSON_EXTRACT(properties, '$.enablePurgeProtection') as "enable_purge_protection",
JSON_EXTRACT(properties, '$.networkAcls') as "network_acls",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
subscriptionId,
resourceGroupName,
vaultName
FROM azure.key_vault.vaults
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
tags as tags,
systemData as system_data,
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.accessPolicies') as "access_policies",
json_extract_path_text(properties, '$.vaultUri') as "vault_uri",
json_extract_path_text(properties, '$.hsmPoolResourceId') as "hsm_pool_resource_id",
json_extract_path_text(properties, '$.enabledForDeployment') as "enabled_for_deployment",
json_extract_path_text(properties, '$.enabledForDiskEncryption') as "enabled_for_disk_encryption",
json_extract_path_text(properties, '$.enabledForTemplateDeployment') as "enabled_for_template_deployment",
json_extract_path_text(properties, '$.enableSoftDelete') as "enable_soft_delete",
json_extract_path_text(properties, '$.softDeleteRetentionInDays') as "soft_delete_retention_in_days",
json_extract_path_text(properties, '$.enableRbacAuthorization') as "enable_rbac_authorization",
json_extract_path_text(properties, '$.createMode') as "create_mode",
json_extract_path_text(properties, '$.enablePurgeProtection') as "enable_purge_protection",
json_extract_path_text(properties, '$.networkAcls') as "network_acls",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
subscriptionId,
resourceGroupName,
vaultName
FROM azure.key_vault.vaults
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
