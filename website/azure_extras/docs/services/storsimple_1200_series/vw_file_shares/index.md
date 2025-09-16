--- 
title: vw_file_shares
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_file_shares
  - storsimple_1200_series
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

Creates, updates, deletes, gets or lists a <code>vw_file_shares</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_file_shares</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_1200_series.vw_file_shares" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.shareStatus') as "share_status",
JSON_EXTRACT(properties, '$.dataPolicy') as "data_policy",
JSON_EXTRACT(properties, '$.adminUser') as "admin_user",
JSON_EXTRACT(properties, '$.provisionedCapacityInBytes') as "provisioned_capacity_in_bytes",
JSON_EXTRACT(properties, '$.usedCapacityInBytes') as "used_capacity_in_bytes",
JSON_EXTRACT(properties, '$.localUsedCapacityInBytes') as "local_used_capacity_in_bytes",
JSON_EXTRACT(properties, '$.monitoringStatus') as "monitoring_status",
subscriptionId,
resourceGroupName,
managerName,
deviceName,
fileServerName,
shareName
FROM azure_extras.storsimple_1200_series.file_shares
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.shareStatus') as "share_status",
json_extract_path_text(properties, '$.dataPolicy') as "data_policy",
json_extract_path_text(properties, '$.adminUser') as "admin_user",
json_extract_path_text(properties, '$.provisionedCapacityInBytes') as "provisioned_capacity_in_bytes",
json_extract_path_text(properties, '$.usedCapacityInBytes') as "used_capacity_in_bytes",
json_extract_path_text(properties, '$.localUsedCapacityInBytes') as "local_used_capacity_in_bytes",
json_extract_path_text(properties, '$.monitoringStatus') as "monitoring_status",
subscriptionId,
resourceGroupName,
managerName,
deviceName,
fileServerName,
shareName
FROM azure_extras.storsimple_1200_series.file_shares
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
</Tabs>
