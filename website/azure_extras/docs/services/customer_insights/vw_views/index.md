--- 
title: vw_views
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_views
  - customer_insights
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

Creates, updates, deletes, gets or lists a <code>vw_views</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_views</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.customer_insights.vw_views" /></td></tr>
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
JSON_EXTRACT(properties, '$.viewName') as "view_name",
JSON_EXTRACT(properties, '$.userId') as "user_id",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.definition') as "definition",
JSON_EXTRACT(properties, '$.changed') as "changed",
JSON_EXTRACT(properties, '$.created') as "created",
subscriptionId,
resourceGroupName,
hubName,
viewName,
userId
FROM azure_extras.customer_insights.views
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me' AND userId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.viewName') as "view_name",
json_extract_path_text(properties, '$.userId') as "user_id",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.definition') as "definition",
json_extract_path_text(properties, '$.changed') as "changed",
json_extract_path_text(properties, '$.created') as "created",
subscriptionId,
resourceGroupName,
hubName,
viewName,
userId
FROM azure_extras.customer_insights.views
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me' AND userId = 'replace-me';
```

</TabItem>
</Tabs>
