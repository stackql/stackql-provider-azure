--- 
title: vw_published_blueprints
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_published_blueprints
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

Creates, updates, deletes, gets or lists a <code>vw_published_blueprints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_published_blueprints</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.blueprints.vw_published_blueprints" /></td></tr>
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
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.targetScope') as "target_scope",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
JSON_EXTRACT(properties, '$.resourceGroups') as "resource_groups",
JSON_EXTRACT(properties, '$.blueprintName') as "blueprint_name",
JSON_EXTRACT(properties, '$.changeNotes') as "change_notes",
resourceScope,
blueprintName,
versionId
FROM azure.blueprints.published_blueprints
WHERE resourceScope = 'replace-me' AND blueprintName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.targetScope') as "target_scope",
json_extract_path_text(properties, '$.parameters') as "parameters",
json_extract_path_text(properties, '$.resourceGroups') as "resource_groups",
json_extract_path_text(properties, '$.blueprintName') as "blueprint_name",
json_extract_path_text(properties, '$.changeNotes') as "change_notes",
resourceScope,
blueprintName,
versionId
FROM azure.blueprints.published_blueprints
WHERE resourceScope = 'replace-me' AND blueprintName = 'replace-me';
```

</TabItem>
</Tabs>
