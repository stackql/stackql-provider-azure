--- 
title: vw_spacecrafts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_spacecrafts
  - orbital
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

Creates, updates, deletes, gets or lists a <code>vw_spacecrafts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_spacecrafts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.orbital.vw_spacecrafts" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.noradId') as "norad_id",
JSON_EXTRACT(properties, '$.titleLine') as "title_line",
JSON_EXTRACT(properties, '$.tleLine1') as "tle_line1",
JSON_EXTRACT(properties, '$.tleLine2') as "tle_line2",
JSON_EXTRACT(properties, '$.links') as "links",
subscriptionId,
resourceGroupName,
spacecraftName
FROM azure.orbital.spacecrafts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.noradId') as "norad_id",
json_extract_path_text(properties, '$.titleLine') as "title_line",
json_extract_path_text(properties, '$.tleLine1') as "tle_line1",
json_extract_path_text(properties, '$.tleLine2') as "tle_line2",
json_extract_path_text(properties, '$.links') as "links",
subscriptionId,
resourceGroupName,
spacecraftName
FROM azure.orbital.spacecrafts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
