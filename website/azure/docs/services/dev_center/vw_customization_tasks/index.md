--- 
title: vw_customization_tasks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_customization_tasks
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

Creates, updates, deletes, gets or lists a <code>vw_customization_tasks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_customization_tasks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.vw_customization_tasks" /></td></tr>
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
JSON_EXTRACT(properties, '$.inputs') as "inputs",
JSON_EXTRACT(properties, '$.timeout') as "timeout",
JSON_EXTRACT(properties, '$.validationStatus') as "validation_status",
subscriptionId,
resourceGroupName,
devCenterName,
catalogName,
taskName
FROM azure.dev_center.customization_tasks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND devCenterName = 'replace-me' AND catalogName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.inputs') as "inputs",
json_extract_path_text(properties, '$.timeout') as "timeout",
json_extract_path_text(properties, '$.validationStatus') as "validation_status",
subscriptionId,
resourceGroupName,
devCenterName,
catalogName,
taskName
FROM azure.dev_center.customization_tasks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND devCenterName = 'replace-me' AND catalogName = 'replace-me';
```

</TabItem>
</Tabs>
