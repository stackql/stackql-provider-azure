--- 
title: vw_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_assignments
  - blueprints
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

Creates, updates, deletes, gets or lists a <code>vw_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.blueprints.vw_assignments" /></td></tr>
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
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.blueprintId') as "blueprint_id",
JSON_EXTRACT(properties, '$.scope') as "scope",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
JSON_EXTRACT(properties, '$.resourceGroups') as "resource_groups",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.locks') as "locks",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.description') as "description",
resourceScope,
assignmentName
FROM azure.blueprints.assignments
WHERE resourceScope = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.blueprintId') as "blueprint_id",
json_extract_path_text(properties, '$.scope') as "scope",
json_extract_path_text(properties, '$.parameters') as "parameters",
json_extract_path_text(properties, '$.resourceGroups') as "resource_groups",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.locks') as "locks",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.description') as "description",
resourceScope,
assignmentName
FROM azure.blueprints.assignments
WHERE resourceScope = 'replace-me';
```

</TabItem>
</Tabs>
