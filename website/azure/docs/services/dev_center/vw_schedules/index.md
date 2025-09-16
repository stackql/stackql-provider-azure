--- 
title: vw_schedules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_schedules
  - dev_center
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

Creates, updates, deletes, gets or lists a <code>vw_schedules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_schedules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.vw_schedules" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.frequency') as "frequency",
JSON_EXTRACT(properties, '$.time') as "time",
JSON_EXTRACT(properties, '$.timeZone') as "time_zone",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
projectName,
poolName,
scheduleName
FROM azure.dev_center.schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND projectName = 'replace-me' AND poolName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.frequency') as "frequency",
json_extract_path_text(properties, '$.time') as "time",
json_extract_path_text(properties, '$.timeZone') as "time_zone",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
projectName,
poolName,
scheduleName
FROM azure.dev_center.schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND projectName = 'replace-me' AND poolName = 'replace-me';
```

</TabItem>
</Tabs>
