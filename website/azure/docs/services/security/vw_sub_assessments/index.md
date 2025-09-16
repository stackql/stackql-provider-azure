--- 
title: vw_sub_assessments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sub_assessments
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

Creates, updates, deletes, gets or lists a <code>vw_sub_assessments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sub_assessments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_sub_assessments" /></td></tr>
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
JSON_EXTRACT(properties, '$.id') as "id",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.remediation') as "remediation",
JSON_EXTRACT(properties, '$.impact') as "impact",
JSON_EXTRACT(properties, '$.category') as "category",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.timeGenerated') as "time_generated",
JSON_EXTRACT(properties, '$.resourceDetails') as "resource_details",
JSON_EXTRACT(properties, '$.additionalData') as "additional_data",
scope,
assessmentName,
subAssessmentName
FROM azure.security.sub_assessments
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
json_extract_path_text(properties, '$.id') as "id",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.remediation') as "remediation",
json_extract_path_text(properties, '$.impact') as "impact",
json_extract_path_text(properties, '$.category') as "category",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.timeGenerated') as "time_generated",
json_extract_path_text(properties, '$.resourceDetails') as "resource_details",
json_extract_path_text(properties, '$.additionalData') as "additional_data",
scope,
assessmentName,
subAssessmentName
FROM azure.security.sub_assessments
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
