--- 
title: vw_user_sessions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_user_sessions
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

Creates, updates, deletes, gets or lists a <code>vw_user_sessions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_user_sessions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.desktop_virtualization.vw_user_sessions" /></td></tr>
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
JSON_EXTRACT(properties, '$.objectId') as "object_id",
JSON_EXTRACT(properties, '$.userPrincipalName') as "user_principal_name",
JSON_EXTRACT(properties, '$.applicationType') as "application_type",
JSON_EXTRACT(properties, '$.sessionState') as "session_state",
JSON_EXTRACT(properties, '$.activeDirectoryUserName') as "active_directory_user_name",
JSON_EXTRACT(properties, '$.createTime') as "create_time",
subscriptionId,
resourceGroupName,
hostPoolName,
sessionHostName,
userSessionId
FROM azure.desktop_virtualization.user_sessions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hostPoolName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.objectId') as "object_id",
json_extract_path_text(properties, '$.userPrincipalName') as "user_principal_name",
json_extract_path_text(properties, '$.applicationType') as "application_type",
json_extract_path_text(properties, '$.sessionState') as "session_state",
json_extract_path_text(properties, '$.activeDirectoryUserName') as "active_directory_user_name",
json_extract_path_text(properties, '$.createTime') as "create_time",
subscriptionId,
resourceGroupName,
hostPoolName,
sessionHostName,
userSessionId
FROM azure.desktop_virtualization.user_sessions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hostPoolName = 'replace-me';
```

</TabItem>
</Tabs>
