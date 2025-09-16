--- 
title: vw_clusters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_clusters
  - vmware
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

Creates, updates, deletes, gets or lists a <code>vw_clusters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_clusters</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.vmware.vw_clusters" /></td></tr>
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
sku as sku,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.clusterId') as "cluster_id",
JSON_EXTRACT(properties, '$.hosts') as "hosts",
subscriptionId,
resourceGroupName,
privateCloudName,
clusterName
FROM azure_isv.vmware.clusters
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND privateCloudName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
sku as sku,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.clusterId') as "cluster_id",
json_extract_path_text(properties, '$.hosts') as "hosts",
subscriptionId,
resourceGroupName,
privateCloudName,
clusterName
FROM azure_isv.vmware.clusters
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND privateCloudName = 'replace-me';
```

</TabItem>
</Tabs>
