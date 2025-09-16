--- 
title: vw_restorable_dropped_sql_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_restorable_dropped_sql_pools
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

Creates, updates, deletes, gets or lists a <code>vw_restorable_dropped_sql_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_restorable_dropped_sql_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.vw_restorable_dropped_sql_pools" /></td></tr>
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
JSON_EXTRACT(properties, '$.databaseName') as "database_name",
JSON_EXTRACT(properties, '$.edition') as "edition",
JSON_EXTRACT(properties, '$.maxSizeBytes') as "max_size_bytes",
JSON_EXTRACT(properties, '$.serviceLevelObjective') as "service_level_objective",
JSON_EXTRACT(properties, '$.elasticPoolName') as "elastic_pool_name",
JSON_EXTRACT(properties, '$.creationDate') as "creation_date",
JSON_EXTRACT(properties, '$.deletionDate') as "deletion_date",
JSON_EXTRACT(properties, '$.earliestRestoreDate') as "earliest_restore_date",
subscriptionId,
resourceGroupName,
workspaceName,
restorableDroppedSqlPoolId
FROM azure.synapse.restorable_dropped_sql_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
json_extract_path_text(properties, '$.databaseName') as "database_name",
json_extract_path_text(properties, '$.edition') as "edition",
json_extract_path_text(properties, '$.maxSizeBytes') as "max_size_bytes",
json_extract_path_text(properties, '$.serviceLevelObjective') as "service_level_objective",
json_extract_path_text(properties, '$.elasticPoolName') as "elastic_pool_name",
json_extract_path_text(properties, '$.creationDate') as "creation_date",
json_extract_path_text(properties, '$.deletionDate') as "deletion_date",
json_extract_path_text(properties, '$.earliestRestoreDate') as "earliest_restore_date",
subscriptionId,
resourceGroupName,
workspaceName,
restorableDroppedSqlPoolId
FROM azure.synapse.restorable_dropped_sql_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
