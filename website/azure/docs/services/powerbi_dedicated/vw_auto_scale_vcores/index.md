--- 
title: vw_auto_scale_vcores
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_auto_scale_vcores
  - powerbi_dedicated
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

Creates, updates, deletes, gets or lists a <code>vw_auto_scale_vcores</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_auto_scale_vcores</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.powerbi_dedicated.vw_auto_scale_vcores" /></td></tr>
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
sku as sku,
type as type,
tags as tags,
systemData as system_data,
JSON_EXTRACT(properties, '$.capacityObjectId') as "capacity_object_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.capacityLimit') as "capacity_limit",
subscriptionId,
resourceGroupName,
vcoreName
FROM azure.powerbi_dedicated.auto_scale_vcores
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
sku as sku,
type as type,
tags as tags,
systemData as system_data,
json_extract_path_text(properties, '$.capacityObjectId') as "capacity_object_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.capacityLimit') as "capacity_limit",
subscriptionId,
resourceGroupName,
vcoreName
FROM azure.powerbi_dedicated.auto_scale_vcores
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
