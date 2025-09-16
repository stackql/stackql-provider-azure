--- 
title: vw_environments_worker_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_environments_worker_pools
  - app_service
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

Creates, updates, deletes, gets or lists a <code>vw_environments_worker_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_environments_worker_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.vw_environments_worker_pools" /></td></tr>
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
kind as kind,
type as type,
sku as sku,
JSON_EXTRACT(properties, '$.workerSizeId') as "worker_size_id",
JSON_EXTRACT(properties, '$.computeMode') as "compute_mode",
JSON_EXTRACT(properties, '$.workerSize') as "worker_size",
JSON_EXTRACT(properties, '$.workerCount') as "worker_count",
JSON_EXTRACT(properties, '$.instanceNames') as "instance_names",
subscriptionId,
resourceGroupName,
name,
workerPoolName
FROM azure.app_service.environments_worker_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND name = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
kind as kind,
type as type,
sku as sku,
json_extract_path_text(properties, '$.workerSizeId') as "worker_size_id",
json_extract_path_text(properties, '$.computeMode') as "compute_mode",
json_extract_path_text(properties, '$.workerSize') as "worker_size",
json_extract_path_text(properties, '$.workerCount') as "worker_count",
json_extract_path_text(properties, '$.instanceNames') as "instance_names",
subscriptionId,
resourceGroupName,
name,
workerPoolName
FROM azure.app_service.environments_worker_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND name = 'replace-me';
```

</TabItem>
</Tabs>
