--- 
title: vw_email_templates
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_email_templates
  - api_management
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

Creates, updates, deletes, gets or lists a <code>vw_email_templates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_email_templates</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_email_templates" /></td></tr>
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
JSON_EXTRACT(properties, '$.subject') as "subject",
JSON_EXTRACT(properties, '$.body') as "body",
JSON_EXTRACT(properties, '$.title') as "title",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.isDefault') as "is_default",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
subscriptionId,
resourceGroupName,
serviceName,
templateName
FROM azure.api_management.email_templates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.subject') as "subject",
json_extract_path_text(properties, '$.body') as "body",
json_extract_path_text(properties, '$.title') as "title",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.isDefault') as "is_default",
json_extract_path_text(properties, '$.parameters') as "parameters",
subscriptionId,
resourceGroupName,
serviceName,
templateName
FROM azure.api_management.email_templates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
