--- 
title: vw_flighting_rings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_flighting_rings
  - test_base
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

Creates, updates, deletes, gets or lists a <code>vw_flighting_rings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_flighting_rings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.vw_flighting_rings" /></td></tr>
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
JSON_EXTRACT(properties, '$.actualFlightingRingName') as "actual_flighting_ring_name",
subscriptionId,
resourceGroupName,
testBaseAccountName,
flightingRingResourceName
FROM azure_extras.test_base.flighting_rings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.actualFlightingRingName') as "actual_flighting_ring_name",
subscriptionId,
resourceGroupName,
testBaseAccountName,
flightingRingResourceName
FROM azure_extras.test_base.flighting_rings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me';
```

</TabItem>
</Tabs>
