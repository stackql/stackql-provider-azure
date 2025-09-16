--- 
title: vw_scheduled_actions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_scheduled_actions
  - cost_management
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

Creates, updates, deletes, gets or lists a <code>vw_scheduled_actions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_scheduled_actions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cost_management.vw_scheduled_actions" /></td></tr>
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
eTag as e_tag,
kind as kind,
systemData as system_data,
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.fileDestination') as "file_destination",
JSON_EXTRACT(properties, '$.notification') as "notification",
JSON_EXTRACT(properties, '$.notificationEmail') as "notification_email",
JSON_EXTRACT(properties, '$.schedule') as "schedule",
JSON_EXTRACT(properties, '$.scope') as "scope",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.viewId') as "view_id",
scope,
name
FROM azure.cost_management.scheduled_actions
WHERE scope = 'replace-me' AND name = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
eTag as e_tag,
kind as kind,
systemData as system_data,
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.fileDestination') as "file_destination",
json_extract_path_text(properties, '$.notification') as "notification",
json_extract_path_text(properties, '$.notificationEmail') as "notification_email",
json_extract_path_text(properties, '$.schedule') as "schedule",
json_extract_path_text(properties, '$.scope') as "scope",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.viewId') as "view_id",
scope,
name
FROM azure.cost_management.scheduled_actions
WHERE scope = 'replace-me' AND name = 'replace-me';
```

</TabItem>
</Tabs>
