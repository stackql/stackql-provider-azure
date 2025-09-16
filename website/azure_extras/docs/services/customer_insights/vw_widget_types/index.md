--- 
title: vw_widget_types
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_widget_types
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

Creates, updates, deletes, gets or lists a <code>vw_widget_types</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_widget_types</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.customer_insights.vw_widget_types" /></td></tr>
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
JSON_EXTRACT(properties, '$.widgetTypeName') as "widget_type_name",
JSON_EXTRACT(properties, '$.definition') as "definition",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.imageUrl') as "image_url",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.widgetVersion') as "widget_version",
JSON_EXTRACT(properties, '$.changed') as "changed",
JSON_EXTRACT(properties, '$.created') as "created",
subscriptionId,
resourceGroupName,
hubName,
widgetTypeName
FROM azure_extras.customer_insights.widget_types
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.widgetTypeName') as "widget_type_name",
json_extract_path_text(properties, '$.definition') as "definition",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.imageUrl') as "image_url",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.widgetVersion') as "widget_version",
json_extract_path_text(properties, '$.changed') as "changed",
json_extract_path_text(properties, '$.created') as "created",
subscriptionId,
resourceGroupName,
hubName,
widgetTypeName
FROM azure_extras.customer_insights.widget_types
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hubName = 'replace-me';
```

</TabItem>
</Tabs>
