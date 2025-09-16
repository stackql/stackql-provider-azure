--- 
title: vw_big_data_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_big_data_pools
  - synapse
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

Creates, updates, deletes, gets or lists a <code>vw_big_data_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_big_data_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.vw_big_data_pools" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.autoScale') as "auto_scale",
JSON_EXTRACT(properties, '$.creationDate') as "creation_date",
JSON_EXTRACT(properties, '$.autoPause') as "auto_pause",
JSON_EXTRACT(properties, '$.isComputeIsolationEnabled') as "is_compute_isolation_enabled",
JSON_EXTRACT(properties, '$.isAutotuneEnabled') as "is_autotune_enabled",
JSON_EXTRACT(properties, '$.sessionLevelPackagesEnabled') as "session_level_packages_enabled",
JSON_EXTRACT(properties, '$.cacheSize') as "cache_size",
JSON_EXTRACT(properties, '$.dynamicExecutorAllocation') as "dynamic_executor_allocation",
JSON_EXTRACT(properties, '$.sparkEventsFolder') as "spark_events_folder",
JSON_EXTRACT(properties, '$.nodeCount') as "node_count",
JSON_EXTRACT(properties, '$.libraryRequirements') as "library_requirements",
JSON_EXTRACT(properties, '$.customLibraries') as "custom_libraries",
JSON_EXTRACT(properties, '$.sparkConfigProperties') as "spark_config_properties",
JSON_EXTRACT(properties, '$.sparkVersion') as "spark_version",
JSON_EXTRACT(properties, '$.defaultSparkLogFolder') as "default_spark_log_folder",
JSON_EXTRACT(properties, '$.nodeSize') as "node_size",
JSON_EXTRACT(properties, '$.nodeSizeFamily') as "node_size_family",
JSON_EXTRACT(properties, '$.lastSucceededTimestamp') as "last_succeeded_timestamp",
subscriptionId,
resourceGroupName,
workspaceName,
bigDataPoolName
FROM azure.synapse.big_data_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.autoScale') as "auto_scale",
json_extract_path_text(properties, '$.creationDate') as "creation_date",
json_extract_path_text(properties, '$.autoPause') as "auto_pause",
json_extract_path_text(properties, '$.isComputeIsolationEnabled') as "is_compute_isolation_enabled",
json_extract_path_text(properties, '$.isAutotuneEnabled') as "is_autotune_enabled",
json_extract_path_text(properties, '$.sessionLevelPackagesEnabled') as "session_level_packages_enabled",
json_extract_path_text(properties, '$.cacheSize') as "cache_size",
json_extract_path_text(properties, '$.dynamicExecutorAllocation') as "dynamic_executor_allocation",
json_extract_path_text(properties, '$.sparkEventsFolder') as "spark_events_folder",
json_extract_path_text(properties, '$.nodeCount') as "node_count",
json_extract_path_text(properties, '$.libraryRequirements') as "library_requirements",
json_extract_path_text(properties, '$.customLibraries') as "custom_libraries",
json_extract_path_text(properties, '$.sparkConfigProperties') as "spark_config_properties",
json_extract_path_text(properties, '$.sparkVersion') as "spark_version",
json_extract_path_text(properties, '$.defaultSparkLogFolder') as "default_spark_log_folder",
json_extract_path_text(properties, '$.nodeSize') as "node_size",
json_extract_path_text(properties, '$.nodeSizeFamily') as "node_size_family",
json_extract_path_text(properties, '$.lastSucceededTimestamp') as "last_succeeded_timestamp",
subscriptionId,
resourceGroupName,
workspaceName,
bigDataPoolName
FROM azure.synapse.big_data_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
