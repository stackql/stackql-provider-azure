--- 
title: vw_service_objectives
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_service_objectives
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

Creates, updates, deletes, gets or lists a <code>vw_service_objectives</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_service_objectives</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_service_objectives" /></td></tr>
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
JSON_EXTRACT(properties, '$.serviceObjectiveName') as "service_objective_name",
JSON_EXTRACT(properties, '$.isDefault') as "is_default",
JSON_EXTRACT(properties, '$.isSystem') as "is_system",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.enabled') as "enabled",
subscriptionId,
resourceGroupName,
serverName,
serviceObjectiveName
FROM azure.sql.service_objectives
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.serviceObjectiveName') as "service_objective_name",
json_extract_path_text(properties, '$.isDefault') as "is_default",
json_extract_path_text(properties, '$.isSystem') as "is_system",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.enabled') as "enabled",
subscriptionId,
resourceGroupName,
serverName,
serviceObjectiveName
FROM azure.sql.service_objectives
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
</Tabs>
