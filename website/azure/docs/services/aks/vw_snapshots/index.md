--- 
title: vw_snapshots
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_snapshots
  - aks
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

Creates, updates, deletes, gets or lists a <code>vw_snapshots</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_snapshots</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.aks.vw_snapshots" /></td></tr>
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
JSON_EXTRACT(properties, '$.creationData') as "creation_data",
JSON_EXTRACT(properties, '$.snapshotType') as "snapshot_type",
JSON_EXTRACT(properties, '$.kubernetesVersion') as "kubernetes_version",
JSON_EXTRACT(properties, '$.nodeImageVersion') as "node_image_version",
JSON_EXTRACT(properties, '$.osType') as "os_type",
JSON_EXTRACT(properties, '$.osSku') as "os_sku",
JSON_EXTRACT(properties, '$.vmSize') as "vm_size",
JSON_EXTRACT(properties, '$.enableFIPS') as "enable_fips",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.aks.snapshots
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.creationData') as "creation_data",
json_extract_path_text(properties, '$.snapshotType') as "snapshot_type",
json_extract_path_text(properties, '$.kubernetesVersion') as "kubernetes_version",
json_extract_path_text(properties, '$.nodeImageVersion') as "node_image_version",
json_extract_path_text(properties, '$.osType') as "os_type",
json_extract_path_text(properties, '$.osSku') as "os_sku",
json_extract_path_text(properties, '$.vmSize') as "vm_size",
json_extract_path_text(properties, '$.enableFIPS') as "enable_fips",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.aks.snapshots
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
