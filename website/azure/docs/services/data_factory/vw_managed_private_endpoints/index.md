--- 
title: vw_managed_private_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_managed_private_endpoints
  - data_factory
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

Creates, updates, deletes, gets or lists a <code>vw_managed_private_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_managed_private_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_factory.vw_managed_private_endpoints" /></td></tr>
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
type as type,
etag as etag,
JSON_EXTRACT(properties, '$.connectionState') as "connection_state",
JSON_EXTRACT(properties, '$.fqdns') as "fqdns",
JSON_EXTRACT(properties, '$.groupId') as "group_id",
JSON_EXTRACT(properties, '$.isReserved') as "is_reserved",
JSON_EXTRACT(properties, '$.privateLinkResourceId') as "private_link_resource_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
factoryName,
managedVirtualNetworkName,
managedPrivateEndpointName
FROM azure.data_factory.managed_private_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND factoryName = 'replace-me' AND managedVirtualNetworkName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
etag as etag,
json_extract_path_text(properties, '$.connectionState') as "connection_state",
json_extract_path_text(properties, '$.fqdns') as "fqdns",
json_extract_path_text(properties, '$.groupId') as "group_id",
json_extract_path_text(properties, '$.isReserved') as "is_reserved",
json_extract_path_text(properties, '$.privateLinkResourceId') as "private_link_resource_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
factoryName,
managedVirtualNetworkName,
managedPrivateEndpointName
FROM azure.data_factory.managed_private_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND factoryName = 'replace-me' AND managedVirtualNetworkName = 'replace-me';
```

</TabItem>
</Tabs>
