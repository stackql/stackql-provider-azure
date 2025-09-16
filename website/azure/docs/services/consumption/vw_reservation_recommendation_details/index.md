--- 
title: vw_reservation_recommendation_details
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_reservation_recommendation_details
  - consumption
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

Creates, updates, deletes, gets or lists a <code>vw_reservation_recommendation_details</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_reservation_recommendation_details</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.consumption.vw_reservation_recommendation_details" /></td></tr>
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
sku as sku,
JSON_EXTRACT(properties, '$.currency') as "currency",
JSON_EXTRACT(properties, '$.resource') as "resource",
JSON_EXTRACT(properties, '$.resourceGroup') as "resource_group",
JSON_EXTRACT(properties, '$.savings') as "savings",
JSON_EXTRACT(properties, '$.scope') as "scope",
JSON_EXTRACT(properties, '$.usage') as "usage",
resourceScope,
scope,
region,
term,
lookBackPeriod,
product
FROM azure.consumption.reservation_recommendation_details
WHERE resourceScope = 'replace-me' AND scope = 'replace-me' AND region = 'replace-me' AND term = 'replace-me' AND lookBackPeriod = 'replace-me' AND product = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
sku as sku,
json_extract_path_text(properties, '$.currency') as "currency",
json_extract_path_text(properties, '$.resource') as "resource",
json_extract_path_text(properties, '$.resourceGroup') as "resource_group",
json_extract_path_text(properties, '$.savings') as "savings",
json_extract_path_text(properties, '$.scope') as "scope",
json_extract_path_text(properties, '$.usage') as "usage",
resourceScope,
scope,
region,
term,
lookBackPeriod,
product
FROM azure.consumption.reservation_recommendation_details
WHERE resourceScope = 'replace-me' AND scope = 'replace-me' AND region = 'replace-me' AND term = 'replace-me' AND lookBackPeriod = 'replace-me' AND product = 'replace-me';
```

</TabItem>
</Tabs>
