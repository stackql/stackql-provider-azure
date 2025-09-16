--- 
title: vw_workbook_templates
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workbook_templates
  - application_insights
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

Creates, updates, deletes, gets or lists a <code>vw_workbook_templates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workbook_templates</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.application_insights.vw_workbook_templates" /></td></tr>
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
location as location,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.priority') as "priority",
JSON_EXTRACT(properties, '$.author') as "author",
JSON_EXTRACT(properties, '$.templateData') as "template_data",
JSON_EXTRACT(properties, '$.galleries') as "galleries",
JSON_EXTRACT(properties, '$.localized') as "localized",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.application_insights.workbook_templates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.priority') as "priority",
json_extract_path_text(properties, '$.author') as "author",
json_extract_path_text(properties, '$.templateData') as "template_data",
json_extract_path_text(properties, '$.galleries') as "galleries",
json_extract_path_text(properties, '$.localized') as "localized",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.application_insights.workbook_templates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me';
```

</TabItem>
</Tabs>
