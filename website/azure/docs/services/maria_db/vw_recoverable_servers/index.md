--- 
title: vw_recoverable_servers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_recoverable_servers
  - maria_db
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

Creates, updates, deletes, gets or lists a <code>vw_recoverable_servers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_recoverable_servers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.maria_db.vw_recoverable_servers" /></td></tr>
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
JSON_EXTRACT(properties, '$.lastAvailableBackupDateTime') as "last_available_backup_date_time",
JSON_EXTRACT(properties, '$.serviceLevelObjective') as "service_level_objective",
JSON_EXTRACT(properties, '$.edition') as "edition",
JSON_EXTRACT(properties, '$.vCore') as "v_core",
JSON_EXTRACT(properties, '$.hardwareGeneration') as "hardware_generation",
JSON_EXTRACT(properties, '$.version') as "version",
subscriptionId,
resourceGroupName,
serverName
FROM azure.maria_db.recoverable_servers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.lastAvailableBackupDateTime') as "last_available_backup_date_time",
json_extract_path_text(properties, '$.serviceLevelObjective') as "service_level_objective",
json_extract_path_text(properties, '$.edition') as "edition",
json_extract_path_text(properties, '$.vCore') as "v_core",
json_extract_path_text(properties, '$.hardwareGeneration') as "hardware_generation",
json_extract_path_text(properties, '$.version') as "version",
subscriptionId,
resourceGroupName,
serverName
FROM azure.maria_db.recoverable_servers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
</Tabs>
