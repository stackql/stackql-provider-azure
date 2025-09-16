--- 
title: vw_hyperv_operations_status_controller_hyperv_operations_status
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_hyperv_operations_status_controller_hyperv_operations_status
  - migrate
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

Creates, updates, deletes, gets or lists a <code>vw_hyperv_operations_status_controller_hyperv_operations_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_hyperv_operations_status_controller_hyperv_operations_status</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate.vw_hyperv_operations_status_controller_hyperv_operations_status" /></td></tr>
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
status as status,
startTime as start_time,
endTime as end_time,
error as error,
JSON_EXTRACT(properties, '$.result') as "result",
subscriptionId,
resourceGroupName,
siteName,
operationStatusName
FROM azure.migrate.hyperv_operations_status_controller_hyperv_operations_status
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me' AND operationStatusName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
status as status,
startTime as start_time,
endTime as end_time,
error as error,
json_extract_path_text(properties, '$.result') as "result",
subscriptionId,
resourceGroupName,
siteName,
operationStatusName
FROM azure.migrate.hyperv_operations_status_controller_hyperv_operations_status
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me' AND operationStatusName = 'replace-me';
```

</TabItem>
</Tabs>
