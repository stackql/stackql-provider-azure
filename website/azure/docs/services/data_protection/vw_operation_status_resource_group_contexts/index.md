--- 
title: vw_operation_status_resource_group_contexts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_operation_status_resource_group_contexts
  - data_protection
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

Creates, updates, deletes, gets or lists a <code>vw_operation_status_resource_group_contexts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_operation_status_resource_group_contexts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_protection.vw_operation_status_resource_group_contexts" /></td></tr>
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
endTime as end_time,
error as error,
startTime as start_time,
status as status,
JSON_EXTRACT(properties, '$.objectType') as "object_type",
subscriptionId,
resourceGroupName,
operationId
FROM azure.data_protection.operation_status_resource_group_contexts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND operationId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
endTime as end_time,
error as error,
startTime as start_time,
status as status,
json_extract_path_text(properties, '$.objectType') as "object_type",
subscriptionId,
resourceGroupName,
operationId
FROM azure.data_protection.operation_status_resource_group_contexts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND operationId = 'replace-me';
```

</TabItem>
</Tabs>
