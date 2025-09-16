--- 
title: vw_data_products
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_data_products
  - network_analytics
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

Creates, updates, deletes, gets or lists a <code>vw_data_products</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_data_products</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network_analytics.vw_data_products" /></td></tr>
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
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.publisher') as "publisher",
JSON_EXTRACT(properties, '$.product') as "product",
JSON_EXTRACT(properties, '$.majorVersion') as "major_version",
JSON_EXTRACT(properties, '$.owners') as "owners",
JSON_EXTRACT(properties, '$.redundancy') as "redundancy",
JSON_EXTRACT(properties, '$.purviewAccount') as "purview_account",
JSON_EXTRACT(properties, '$.purviewCollection') as "purview_collection",
JSON_EXTRACT(properties, '$.privateLinksEnabled') as "private_links_enabled",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.customerManagedKeyEncryptionEnabled') as "customer_managed_key_encryption_enabled",
JSON_EXTRACT(properties, '$.customerEncryptionKey') as "customer_encryption_key",
JSON_EXTRACT(properties, '$.networkacls') as "networkacls",
JSON_EXTRACT(properties, '$.managedResourceGroupConfiguration') as "managed_resource_group_configuration",
JSON_EXTRACT(properties, '$.availableMinorVersions') as "available_minor_versions",
JSON_EXTRACT(properties, '$.currentMinorVersion') as "current_minor_version",
JSON_EXTRACT(properties, '$.documentation') as "documentation",
JSON_EXTRACT(properties, '$.consumptionEndpoints') as "consumption_endpoints",
JSON_EXTRACT(properties, '$.keyVaultUrl') as "key_vault_url",
subscriptionId,
resourceGroupName,
dataProductName
FROM azure.network_analytics.data_products
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.publisher') as "publisher",
json_extract_path_text(properties, '$.product') as "product",
json_extract_path_text(properties, '$.majorVersion') as "major_version",
json_extract_path_text(properties, '$.owners') as "owners",
json_extract_path_text(properties, '$.redundancy') as "redundancy",
json_extract_path_text(properties, '$.purviewAccount') as "purview_account",
json_extract_path_text(properties, '$.purviewCollection') as "purview_collection",
json_extract_path_text(properties, '$.privateLinksEnabled') as "private_links_enabled",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.customerManagedKeyEncryptionEnabled') as "customer_managed_key_encryption_enabled",
json_extract_path_text(properties, '$.customerEncryptionKey') as "customer_encryption_key",
json_extract_path_text(properties, '$.networkacls') as "networkacls",
json_extract_path_text(properties, '$.managedResourceGroupConfiguration') as "managed_resource_group_configuration",
json_extract_path_text(properties, '$.availableMinorVersions') as "available_minor_versions",
json_extract_path_text(properties, '$.currentMinorVersion') as "current_minor_version",
json_extract_path_text(properties, '$.documentation') as "documentation",
json_extract_path_text(properties, '$.consumptionEndpoints') as "consumption_endpoints",
json_extract_path_text(properties, '$.keyVaultUrl') as "key_vault_url",
subscriptionId,
resourceGroupName,
dataProductName
FROM azure.network_analytics.data_products
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
