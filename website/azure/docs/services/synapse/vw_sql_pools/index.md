--- 
title: vw_sql_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sql_pools
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

Creates, updates, deletes, gets or lists a <code>vw_sql_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sql_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.vw_sql_pools" /></td></tr>
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
sku as sku,
JSON_EXTRACT(properties, '$.maxSizeBytes') as "max_size_bytes",
JSON_EXTRACT(properties, '$.collation') as "collation",
JSON_EXTRACT(properties, '$.sourceDatabaseId') as "source_database_id",
JSON_EXTRACT(properties, '$.recoverableDatabaseId') as "recoverable_database_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.restorePointInTime') as "restore_point_in_time",
JSON_EXTRACT(properties, '$.createMode') as "create_mode",
JSON_EXTRACT(properties, '$.creationDate') as "creation_date",
JSON_EXTRACT(properties, '$.storageAccountType') as "storage_account_type",
JSON_EXTRACT(properties, '$.sourceDatabaseDeletionDate') as "source_database_deletion_date",
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName
FROM azure.synapse.sql_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
sku as sku,
json_extract_path_text(properties, '$.maxSizeBytes') as "max_size_bytes",
json_extract_path_text(properties, '$.collation') as "collation",
json_extract_path_text(properties, '$.sourceDatabaseId') as "source_database_id",
json_extract_path_text(properties, '$.recoverableDatabaseId') as "recoverable_database_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.restorePointInTime') as "restore_point_in_time",
json_extract_path_text(properties, '$.createMode') as "create_mode",
json_extract_path_text(properties, '$.creationDate') as "creation_date",
json_extract_path_text(properties, '$.storageAccountType') as "storage_account_type",
json_extract_path_text(properties, '$.sourceDatabaseDeletionDate') as "source_database_deletion_date",
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName
FROM azure.synapse.sql_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
