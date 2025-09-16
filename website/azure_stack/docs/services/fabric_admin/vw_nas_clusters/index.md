--- 
title: vw_nas_clusters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_nas_clusters
  - fabric_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_nas_clusters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_nas_clusters</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.fabric_admin.vw_nas_clusters" /></td></tr>
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
JSON_EXTRACT(properties, '$.clusterName') as "cluster_name",
JSON_EXTRACT(properties, '$.portalUri') as "portal_uri",
JSON_EXTRACT(properties, '$.size') as "size",
JSON_EXTRACT(properties, '$.sizeRemaining') as "size_remaining",
subscriptionId,
resourceGroupName,
location,
nasCluster
FROM azure_stack.fabric_admin.nas_clusters
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.clusterName') as "cluster_name",
json_extract_path_text(properties, '$.portalUri') as "portal_uri",
json_extract_path_text(properties, '$.size') as "size",
json_extract_path_text(properties, '$.sizeRemaining') as "size_remaining",
subscriptionId,
resourceGroupName,
location,
nasCluster
FROM azure_stack.fabric_admin.nas_clusters
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
