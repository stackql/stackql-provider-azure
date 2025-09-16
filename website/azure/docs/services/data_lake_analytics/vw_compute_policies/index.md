--- 
title: vw_compute_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_compute_policies
  - data_lake_analytics
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

Creates, updates, deletes, gets or lists a <code>vw_compute_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_compute_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_lake_analytics.vw_compute_policies" /></td></tr>
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
JSON_EXTRACT(properties, '$.objectId') as "object_id",
JSON_EXTRACT(properties, '$.objectType') as "object_type",
JSON_EXTRACT(properties, '$.maxDegreeOfParallelismPerJob') as "max_degree_of_parallelism_per_job",
JSON_EXTRACT(properties, '$.minPriorityPerJob') as "min_priority_per_job",
subscriptionId,
resourceGroupName,
accountName,
computePolicyName
FROM azure.data_lake_analytics.compute_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.objectId') as "object_id",
json_extract_path_text(properties, '$.objectType') as "object_type",
json_extract_path_text(properties, '$.maxDegreeOfParallelismPerJob') as "max_degree_of_parallelism_per_job",
json_extract_path_text(properties, '$.minPriorityPerJob') as "min_priority_per_job",
subscriptionId,
resourceGroupName,
accountName,
computePolicyName
FROM azure.data_lake_analytics.compute_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
