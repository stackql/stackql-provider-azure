--- 
title: vw_scaling_plans
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_scaling_plans
  - desktop_virtualization
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

Creates, updates, deletes, gets or lists a <code>vw_scaling_plans</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_scaling_plans</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.desktop_virtualization.vw_scaling_plans" /></td></tr>
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
managedBy as managed_by,
kind as kind,
etag as etag,
identity as identity,
sku as sku,
plan as plan,
JSON_EXTRACT(properties, '$.objectId') as "object_id",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.timeZone') as "time_zone",
JSON_EXTRACT(properties, '$.hostPoolType') as "host_pool_type",
JSON_EXTRACT(properties, '$.exclusionTag') as "exclusion_tag",
JSON_EXTRACT(properties, '$.schedules') as "schedules",
JSON_EXTRACT(properties, '$.hostPoolReferences') as "host_pool_references",
subscriptionId,
resourceGroupName,
scalingPlanName
FROM azure.desktop_virtualization.scaling_plans
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
managedBy as managed_by,
kind as kind,
etag as etag,
identity as identity,
sku as sku,
plan as plan,
json_extract_path_text(properties, '$.objectId') as "object_id",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.timeZone') as "time_zone",
json_extract_path_text(properties, '$.hostPoolType') as "host_pool_type",
json_extract_path_text(properties, '$.exclusionTag') as "exclusion_tag",
json_extract_path_text(properties, '$.schedules') as "schedules",
json_extract_path_text(properties, '$.hostPoolReferences') as "host_pool_references",
subscriptionId,
resourceGroupName,
scalingPlanName
FROM azure.desktop_virtualization.scaling_plans
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
