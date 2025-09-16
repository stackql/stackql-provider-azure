--- 
title: vw_actions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_actions
  - sentinel
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

Creates, updates, deletes, gets or lists a <code>vw_actions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_actions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sentinel.vw_actions" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.logicAppResourceId') as "logic_app_resource_id",
JSON_EXTRACT(properties, '$.workflowId') as "workflow_id",
subscriptionId,
resourceGroupName,
workspaceName,
ruleId,
actionId
FROM azure.sentinel.actions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND ruleId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
etag as etag,
json_extract_path_text(properties, '$.logicAppResourceId') as "logic_app_resource_id",
json_extract_path_text(properties, '$.workflowId') as "workflow_id",
subscriptionId,
resourceGroupName,
workspaceName,
ruleId,
actionId
FROM azure.sentinel.actions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND ruleId = 'replace-me';
```

</TabItem>
</Tabs>
