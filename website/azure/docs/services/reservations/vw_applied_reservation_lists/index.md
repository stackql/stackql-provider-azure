--- 
title: vw_applied_reservation_lists
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_applied_reservation_lists
  - reservations
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

Creates, updates, deletes, gets or lists a <code>vw_applied_reservation_lists</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_applied_reservation_lists</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.reservations.vw_applied_reservation_lists" /></td></tr>
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
JSON_EXTRACT(properties, '$.reservationOrderIds') as "reservation_order_ids",
subscriptionId
FROM azure.reservations.applied_reservation_lists
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.reservationOrderIds') as "reservation_order_ids",
subscriptionId
FROM azure.reservations.applied_reservation_lists
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
