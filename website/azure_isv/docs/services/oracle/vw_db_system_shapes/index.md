--- 
title: vw_db_system_shapes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_db_system_shapes
  - oracle
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

Creates, updates, deletes, gets or lists a <code>vw_db_system_shapes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_db_system_shapes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.oracle.vw_db_system_shapes" /></td></tr>
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
JSON_EXTRACT(properties, '$.shapeFamily') as "shape_family",
JSON_EXTRACT(properties, '$.availableCoreCount') as "available_core_count",
JSON_EXTRACT(properties, '$.minimumCoreCount') as "minimum_core_count",
JSON_EXTRACT(properties, '$.runtimeMinimumCoreCount') as "runtime_minimum_core_count",
JSON_EXTRACT(properties, '$.coreCountIncrement') as "core_count_increment",
JSON_EXTRACT(properties, '$.minStorageCount') as "min_storage_count",
JSON_EXTRACT(properties, '$.maxStorageCount') as "max_storage_count",
JSON_EXTRACT(properties, '$.availableDataStoragePerServerInTbs') as "available_data_storage_per_server_in_tbs",
JSON_EXTRACT(properties, '$.availableMemoryPerNodeInGbs') as "available_memory_per_node_in_gbs",
JSON_EXTRACT(properties, '$.availableDbNodePerNodeInGbs') as "available_db_node_per_node_in_gbs",
JSON_EXTRACT(properties, '$.minCoreCountPerNode') as "min_core_count_per_node",
JSON_EXTRACT(properties, '$.availableMemoryInGbs') as "available_memory_in_gbs",
JSON_EXTRACT(properties, '$.minMemoryPerNodeInGbs') as "min_memory_per_node_in_gbs",
JSON_EXTRACT(properties, '$.availableDbNodeStorageInGbs') as "available_db_node_storage_in_gbs",
JSON_EXTRACT(properties, '$.minDbNodeStoragePerNodeInGbs') as "min_db_node_storage_per_node_in_gbs",
JSON_EXTRACT(properties, '$.availableDataStorageInTbs') as "available_data_storage_in_tbs",
JSON_EXTRACT(properties, '$.minDataStorageInTbs') as "min_data_storage_in_tbs",
JSON_EXTRACT(properties, '$.minimumNodeCount') as "minimum_node_count",
JSON_EXTRACT(properties, '$.maximumNodeCount') as "maximum_node_count",
JSON_EXTRACT(properties, '$.availableCoreCountPerNode') as "available_core_count_per_node",
subscriptionId,
location,
dbsystemshapename
FROM azure_isv.oracle.db_system_shapes
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.shapeFamily') as "shape_family",
json_extract_path_text(properties, '$.availableCoreCount') as "available_core_count",
json_extract_path_text(properties, '$.minimumCoreCount') as "minimum_core_count",
json_extract_path_text(properties, '$.runtimeMinimumCoreCount') as "runtime_minimum_core_count",
json_extract_path_text(properties, '$.coreCountIncrement') as "core_count_increment",
json_extract_path_text(properties, '$.minStorageCount') as "min_storage_count",
json_extract_path_text(properties, '$.maxStorageCount') as "max_storage_count",
json_extract_path_text(properties, '$.availableDataStoragePerServerInTbs') as "available_data_storage_per_server_in_tbs",
json_extract_path_text(properties, '$.availableMemoryPerNodeInGbs') as "available_memory_per_node_in_gbs",
json_extract_path_text(properties, '$.availableDbNodePerNodeInGbs') as "available_db_node_per_node_in_gbs",
json_extract_path_text(properties, '$.minCoreCountPerNode') as "min_core_count_per_node",
json_extract_path_text(properties, '$.availableMemoryInGbs') as "available_memory_in_gbs",
json_extract_path_text(properties, '$.minMemoryPerNodeInGbs') as "min_memory_per_node_in_gbs",
json_extract_path_text(properties, '$.availableDbNodeStorageInGbs') as "available_db_node_storage_in_gbs",
json_extract_path_text(properties, '$.minDbNodeStoragePerNodeInGbs') as "min_db_node_storage_per_node_in_gbs",
json_extract_path_text(properties, '$.availableDataStorageInTbs') as "available_data_storage_in_tbs",
json_extract_path_text(properties, '$.minDataStorageInTbs') as "min_data_storage_in_tbs",
json_extract_path_text(properties, '$.minimumNodeCount') as "minimum_node_count",
json_extract_path_text(properties, '$.maximumNodeCount') as "maximum_node_count",
json_extract_path_text(properties, '$.availableCoreCountPerNode') as "available_core_count_per_node",
subscriptionId,
location,
dbsystemshapename
FROM azure_isv.oracle.db_system_shapes
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
