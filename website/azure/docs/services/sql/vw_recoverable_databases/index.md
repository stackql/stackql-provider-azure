--- 
title: vw_recoverable_databases
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_recoverable_databases
  - sql
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

Creates, updates, deletes, gets or lists a <code>vw_recoverable_databases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_recoverable_databases</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_recoverable_databases" /></td></tr>
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
JSON_EXTRACT(properties, '$.edition') as "edition",
JSON_EXTRACT(properties, '$.serviceLevelObjective') as "service_level_objective",
JSON_EXTRACT(properties, '$.elasticPoolName') as "elastic_pool_name",
JSON_EXTRACT(properties, '$.lastAvailableBackupDate') as "last_available_backup_date",
JSON_EXTRACT(properties, '$.keys') as "keys",
subscriptionId,
resourceGroupName,
serverName,
databaseName
FROM azure.sql.recoverable_databases
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.edition') as "edition",
json_extract_path_text(properties, '$.serviceLevelObjective') as "service_level_objective",
json_extract_path_text(properties, '$.elasticPoolName') as "elastic_pool_name",
json_extract_path_text(properties, '$.lastAvailableBackupDate') as "last_available_backup_date",
json_extract_path_text(properties, '$.keys') as "keys",
subscriptionId,
resourceGroupName,
serverName,
databaseName
FROM azure.sql.recoverable_databases
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
</Tabs>
