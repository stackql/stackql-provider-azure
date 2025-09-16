--- 
title: vw_plans
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_plans
  - subscriptions_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_plans</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_plans</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.subscriptions_admin.vw_plans" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.externalReferenceId') as "external_reference_id",
JSON_EXTRACT(properties, '$.quotaIds') as "quota_ids",
JSON_EXTRACT(properties, '$.name') as "name",
JSON_EXTRACT(properties, '$.subscriptionCount') as "subscription_count",
JSON_EXTRACT(properties, '$.skuIds') as "sku_ids",
subscriptionId,
resourceGroupName,
plan
FROM azure_stack.subscriptions_admin.plans
WHERE subscriptionId = 'replace-me';
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
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.externalReferenceId') as "external_reference_id",
json_extract_path_text(properties, '$.quotaIds') as "quota_ids",
json_extract_path_text(properties, '$.name') as "name",
json_extract_path_text(properties, '$.subscriptionCount') as "subscription_count",
json_extract_path_text(properties, '$.skuIds') as "sku_ids",
subscriptionId,
resourceGroupName,
plan
FROM azure_stack.subscriptions_admin.plans
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
