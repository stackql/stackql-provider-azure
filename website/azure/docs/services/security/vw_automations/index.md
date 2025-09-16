--- 
title: vw_automations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_automations
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

Creates, updates, deletes, gets or lists a <code>vw_automations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_automations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_automations" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.isEnabled') as "is_enabled",
JSON_EXTRACT(properties, '$.scopes') as "scopes",
JSON_EXTRACT(properties, '$.sources') as "sources",
JSON_EXTRACT(properties, '$.actions') as "actions",
subscriptionId,
resourceGroupName,
automationName
FROM azure.security.automations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.isEnabled') as "is_enabled",
json_extract_path_text(properties, '$.scopes') as "scopes",
json_extract_path_text(properties, '$.sources') as "sources",
json_extract_path_text(properties, '$.actions') as "actions",
subscriptionId,
resourceGroupName,
automationName
FROM azure.security.automations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
