--- 
title: vw_assessments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_assessments
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

Creates, updates, deletes, gets or lists a <code>vw_assessments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_assessments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_assessments" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.resourceDetails') as "resource_details",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.additionalData') as "additional_data",
JSON_EXTRACT(properties, '$.links') as "links",
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.partnersData') as "partners_data",
resourceId,
assessmentName,
scope
FROM azure.security.assessments
WHERE scope = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.resourceDetails') as "resource_details",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.additionalData') as "additional_data",
json_extract_path_text(properties, '$.links') as "links",
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.partnersData') as "partners_data",
resourceId,
assessmentName,
scope
FROM azure.security.assessments
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
