--- 
title: vw_managed_virtual_networks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_managed_virtual_networks
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

Creates, updates, deletes, gets or lists a <code>vw_managed_virtual_networks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_managed_virtual_networks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_factory.vw_managed_virtual_networks" /></td></tr>
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
JSON_EXTRACT(properties, '$.vNetId') as "vnet_id",
JSON_EXTRACT(properties, '$.alias') as "alias",
subscriptionId,
resourceGroupName,
factoryName,
managedVirtualNetworkName
FROM azure.data_factory.managed_virtual_networks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND factoryName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
etag as etag,
json_extract_path_text(properties, '$.vNetId') as "vnet_id",
json_extract_path_text(properties, '$.alias') as "alias",
subscriptionId,
resourceGroupName,
factoryName,
managedVirtualNetworkName
FROM azure.data_factory.managed_virtual_networks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND factoryName = 'replace-me';
```

</TabItem>
</Tabs>
