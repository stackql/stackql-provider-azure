--- 
title: vw_configuration_stores
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_configuration_stores
  - app_configuration
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

Creates, updates, deletes, gets or lists a <code>vw_configuration_stores</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_configuration_stores</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_configuration.vw_configuration_stores" /></td></tr>
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
sku as sku,
systemData as system_data,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.creationDate') as "creation_date",
JSON_EXTRACT(properties, '$.endpoint') as "endpoint",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.disableLocalAuth') as "disable_local_auth",
JSON_EXTRACT(properties, '$.softDeleteRetentionInDays') as "soft_delete_retention_in_days",
JSON_EXTRACT(properties, '$.enablePurgeProtection') as "enable_purge_protection",
JSON_EXTRACT(properties, '$.dataPlaneProxy') as "data_plane_proxy",
JSON_EXTRACT(properties, '$.createMode') as "create_mode",
subscriptionId,
resourceGroupName,
configStoreName
FROM azure.app_configuration.configuration_stores
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
sku as sku,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.creationDate') as "creation_date",
json_extract_path_text(properties, '$.endpoint') as "endpoint",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.disableLocalAuth') as "disable_local_auth",
json_extract_path_text(properties, '$.softDeleteRetentionInDays') as "soft_delete_retention_in_days",
json_extract_path_text(properties, '$.enablePurgeProtection') as "enable_purge_protection",
json_extract_path_text(properties, '$.dataPlaneProxy') as "data_plane_proxy",
json_extract_path_text(properties, '$.createMode') as "create_mode",
subscriptionId,
resourceGroupName,
configStoreName
FROM azure.app_configuration.configuration_stores
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
