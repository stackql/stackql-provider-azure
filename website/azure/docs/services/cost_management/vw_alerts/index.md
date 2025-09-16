--- 
title: vw_alerts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_alerts
  - cost_management
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

Creates, updates, deletes, gets or lists a <code>vw_alerts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_alerts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cost_management.vw_alerts" /></td></tr>
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
eTag as e_tag,
JSON_EXTRACT(properties, '$.definition') as "definition",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.source') as "source",
JSON_EXTRACT(properties, '$.details') as "details",
JSON_EXTRACT(properties, '$.costEntityId') as "cost_entity_id",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.closeTime') as "close_time",
JSON_EXTRACT(properties, '$.modificationTime') as "modification_time",
JSON_EXTRACT(properties, '$.statusModificationUserName') as "status_modification_user_name",
JSON_EXTRACT(properties, '$.statusModificationTime') as "status_modification_time",
scope,
alertId
FROM azure.cost_management.alerts
WHERE scope = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
eTag as e_tag,
json_extract_path_text(properties, '$.definition') as "definition",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.source') as "source",
json_extract_path_text(properties, '$.details') as "details",
json_extract_path_text(properties, '$.costEntityId') as "cost_entity_id",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.closeTime') as "close_time",
json_extract_path_text(properties, '$.modificationTime') as "modification_time",
json_extract_path_text(properties, '$.statusModificationUserName') as "status_modification_user_name",
json_extract_path_text(properties, '$.statusModificationTime') as "status_modification_time",
scope,
alertId
FROM azure.cost_management.alerts
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
