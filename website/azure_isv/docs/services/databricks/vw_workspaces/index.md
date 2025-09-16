--- 
title: vw_workspaces
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workspaces
  - databricks
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_workspaces</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workspaces</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.databricks.vw_workspaces" /></td></tr>
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
sku as sku,
systemData as system_data,
tags as tags,
JSON_EXTRACT(properties, '$.managedResourceGroupId') as "managed_resource_group_id",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.uiDefinitionUri') as "ui_definition_uri",
JSON_EXTRACT(properties, '$.authorizations') as "authorizations",
JSON_EXTRACT(properties, '$.createdBy') as "created_by",
JSON_EXTRACT(properties, '$.updatedBy') as "updated_by",
JSON_EXTRACT(properties, '$.createdDateTime') as "created_date_time",
JSON_EXTRACT(properties, '$.workspaceId') as "workspace_id",
JSON_EXTRACT(properties, '$.workspaceUrl') as "workspace_url",
JSON_EXTRACT(properties, '$.storageAccountIdentity') as "storage_account_identity",
JSON_EXTRACT(properties, '$.managedDiskIdentity') as "managed_disk_identity",
JSON_EXTRACT(properties, '$.diskEncryptionSetId') as "disk_encryption_set_id",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.enhancedSecurityCompliance') as "enhanced_security_compliance",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.requiredNsgRules') as "required_nsg_rules",
JSON_EXTRACT(properties, '$.defaultCatalog') as "default_catalog",
JSON_EXTRACT(properties, '$.isUcEnabled') as "is_uc_enabled",
JSON_EXTRACT(properties, '$.accessConnector') as "access_connector",
JSON_EXTRACT(properties, '$.defaultStorageFirewall') as "default_storage_firewall",
subscriptionId,
resourceGroupName,
workspaceName
FROM azure_isv.databricks.workspaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
sku as sku,
systemData as system_data,
tags as tags,
json_extract_path_text(properties, '$.managedResourceGroupId') as "managed_resource_group_id",
json_extract_path_text(properties, '$.parameters') as "parameters",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.uiDefinitionUri') as "ui_definition_uri",
json_extract_path_text(properties, '$.authorizations') as "authorizations",
json_extract_path_text(properties, '$.createdBy') as "created_by",
json_extract_path_text(properties, '$.updatedBy') as "updated_by",
json_extract_path_text(properties, '$.createdDateTime') as "created_date_time",
json_extract_path_text(properties, '$.workspaceId') as "workspace_id",
json_extract_path_text(properties, '$.workspaceUrl') as "workspace_url",
json_extract_path_text(properties, '$.storageAccountIdentity') as "storage_account_identity",
json_extract_path_text(properties, '$.managedDiskIdentity') as "managed_disk_identity",
json_extract_path_text(properties, '$.diskEncryptionSetId') as "disk_encryption_set_id",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.enhancedSecurityCompliance') as "enhanced_security_compliance",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.requiredNsgRules') as "required_nsg_rules",
json_extract_path_text(properties, '$.defaultCatalog') as "default_catalog",
json_extract_path_text(properties, '$.isUcEnabled') as "is_uc_enabled",
json_extract_path_text(properties, '$.accessConnector') as "access_connector",
json_extract_path_text(properties, '$.defaultStorageFirewall') as "default_storage_firewall",
subscriptionId,
resourceGroupName,
workspaceName
FROM azure_isv.databricks.workspaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
