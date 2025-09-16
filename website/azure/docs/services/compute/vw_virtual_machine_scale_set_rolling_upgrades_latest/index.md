--- 
title: vw_virtual_machine_scale_set_rolling_upgrades_latest
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_machine_scale_set_rolling_upgrades_latest
  - compute
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_machine_scale_set_rolling_upgrades_latest</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_machine_scale_set_rolling_upgrades_latest</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_virtual_machine_scale_set_rolling_upgrades_latest" /></td></tr>
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
JSON_EXTRACT(properties, '$.policy') as "policy",
JSON_EXTRACT(properties, '$.runningStatus') as "running_status",
JSON_EXTRACT(properties, '$.progress') as "progress",
JSON_EXTRACT(properties, '$.error') as "error",
subscriptionId,
resourceGroupName,
vmScaleSetName
FROM azure.compute.virtual_machine_scale_set_rolling_upgrades_latest
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vmScaleSetName = 'replace-me';
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
json_extract_path_text(properties, '$.policy') as "policy",
json_extract_path_text(properties, '$.runningStatus') as "running_status",
json_extract_path_text(properties, '$.progress') as "progress",
json_extract_path_text(properties, '$.error') as "error",
subscriptionId,
resourceGroupName,
vmScaleSetName
FROM azure.compute.virtual_machine_scale_set_rolling_upgrades_latest
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vmScaleSetName = 'replace-me';
```

</TabItem>
</Tabs>
