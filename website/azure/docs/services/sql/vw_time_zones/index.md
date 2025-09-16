--- 
title: vw_time_zones
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_time_zones
  - sql
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

Creates, updates, deletes, gets or lists a <code>vw_time_zones</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_time_zones</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_time_zones" /></td></tr>
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
JSON_EXTRACT(properties, '$.timeZoneId') as "time_zone_id",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
subscriptionId,
locationName,
timeZoneId
FROM azure.sql.time_zones
WHERE subscriptionId = 'replace-me' AND locationName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.timeZoneId') as "time_zone_id",
json_extract_path_text(properties, '$.displayName') as "display_name",
subscriptionId,
locationName,
timeZoneId
FROM azure.sql.time_zones
WHERE subscriptionId = 'replace-me' AND locationName = 'replace-me';
```

</TabItem>
</Tabs>
