--- 
title: vw_student_labs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_student_labs
  - education
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_student_labs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_student_labs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.education.vw_student_labs" /></td></tr>
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
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.expirationDate') as "expiration_date",
JSON_EXTRACT(properties, '$.role') as "role",
JSON_EXTRACT(properties, '$.budget') as "budget",
JSON_EXTRACT(properties, '$.subscriptionId') as "subscription_id",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.effectiveDate') as "effective_date",
JSON_EXTRACT(properties, '$.labScope') as "lab_scope",
studentLabName
FROM azure_extras.education.student_labs
WHERE studentLabName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.expirationDate') as "expiration_date",
json_extract_path_text(properties, '$.role') as "role",
json_extract_path_text(properties, '$.budget') as "budget",
json_extract_path_text(properties, '$.subscriptionId') as "subscription_id",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.effectiveDate') as "effective_date",
json_extract_path_text(properties, '$.labScope') as "lab_scope",
studentLabName
FROM azure_extras.education.student_labs
WHERE studentLabName = 'replace-me';
```

</TabItem>
</Tabs>
