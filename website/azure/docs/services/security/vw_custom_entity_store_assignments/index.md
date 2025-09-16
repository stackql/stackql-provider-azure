--- 
title: vw_custom_entity_store_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_custom_entity_store_assignments
  - security
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

Creates, updates, deletes, gets or lists a <code>vw_custom_entity_store_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_custom_entity_store_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_custom_entity_store_assignments" /></td></tr>
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
systemData as system_data,
type as type,
JSON_EXTRACT(properties, '$.principal') as "principal",
JSON_EXTRACT(properties, '$.entityStoreDatabaseLink') as "entity_store_database_link",
subscriptionId,
resourceGroupName,
customEntityStoreAssignmentName
FROM azure.security.custom_entity_store_assignments
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
systemData as system_data,
type as type,
json_extract_path_text(properties, '$.principal') as "principal",
json_extract_path_text(properties, '$.entityStoreDatabaseLink') as "entity_store_database_link",
subscriptionId,
resourceGroupName,
customEntityStoreAssignmentName
FROM azure.security.custom_entity_store_assignments
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
