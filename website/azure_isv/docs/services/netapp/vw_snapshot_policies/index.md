--- 
title: vw_snapshot_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_snapshot_policies
  - netapp
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_snapshot_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_snapshot_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.netapp.vw_snapshot_policies" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.hourlySchedule') as "hourly_schedule",
JSON_EXTRACT(properties, '$.dailySchedule') as "daily_schedule",
JSON_EXTRACT(properties, '$.weeklySchedule') as "weekly_schedule",
JSON_EXTRACT(properties, '$.monthlySchedule') as "monthly_schedule",
JSON_EXTRACT(properties, '$.enabled') as "enabled",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
accountName,
snapshotPolicyName
FROM azure_isv.netapp.snapshot_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
etag as etag,
json_extract_path_text(properties, '$.hourlySchedule') as "hourly_schedule",
json_extract_path_text(properties, '$.dailySchedule') as "daily_schedule",
json_extract_path_text(properties, '$.weeklySchedule') as "weekly_schedule",
json_extract_path_text(properties, '$.monthlySchedule') as "monthly_schedule",
json_extract_path_text(properties, '$.enabled') as "enabled",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
accountName,
snapshotPolicyName
FROM azure_isv.netapp.snapshot_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
