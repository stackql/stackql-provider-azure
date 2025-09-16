--- 
title: vw_plan_members
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_plan_members
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

Creates, updates, deletes, gets or lists a <code>vw_plan_members</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_plan_members</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.vw_plan_members" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.memberId') as "member_id",
JSON_EXTRACT(properties, '$.memberType') as "member_type",
JSON_EXTRACT(properties, '$.syncStatus') as "sync_status",
JSON_EXTRACT(properties, '$.tags') as "tags",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
planName,
memberName
FROM azure.dev_center.plan_members
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND planName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
tags as tags,
json_extract_path_text(properties, '$.memberId') as "member_id",
json_extract_path_text(properties, '$.memberType') as "member_type",
json_extract_path_text(properties, '$.syncStatus') as "sync_status",
json_extract_path_text(properties, '$.tags') as "tags",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
planName,
memberName
FROM azure.dev_center.plan_members
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND planName = 'replace-me';
```

</TabItem>
</Tabs>
