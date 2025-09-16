--- 
title: vw_session_host_managements_update_status
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_session_host_managements_update_status
  - desktop_virtualization
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

Creates, updates, deletes, gets or lists a <code>vw_session_host_managements_update_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_session_host_managements_update_status</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.desktop_virtualization.vw_session_host_managements_update_status" /></td></tr>
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
percentComplete as percent_complete,
startTime as start_time,
endTime as end_time,
error as error,
JSON_EXTRACT(properties, '$.correlationId') as "correlation_id",
JSON_EXTRACT(properties, '$.progress') as "progress",
JSON_EXTRACT(properties, '$.scheduledDateTime') as "scheduled_date_time",
JSON_EXTRACT(properties, '$.sessionHostManagement') as "session_host_management",
subscriptionId,
resourceGroupName,
hostPoolName
FROM azure.desktop_virtualization.session_host_managements_update_status
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hostPoolName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
status as status,
percentComplete as percent_complete,
startTime as start_time,
endTime as end_time,
error as error,
json_extract_path_text(properties, '$.correlationId') as "correlation_id",
json_extract_path_text(properties, '$.progress') as "progress",
json_extract_path_text(properties, '$.scheduledDateTime') as "scheduled_date_time",
json_extract_path_text(properties, '$.sessionHostManagement') as "session_host_management",
subscriptionId,
resourceGroupName,
hostPoolName
FROM azure.desktop_virtualization.session_host_managements_update_status
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hostPoolName = 'replace-me';
```

</TabItem>
</Tabs>
