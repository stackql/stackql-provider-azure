--- 
title: vw_user_settings_with_locations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_user_settings_with_locations
  - cloud_shell
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

Creates, updates, deletes, gets or lists a <code>vw_user_settings_with_locations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_user_settings_with_locations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cloud_shell.vw_user_settings_with_locations" /></td></tr>
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
JSON_EXTRACT(properties, '$.preferredOsType') as "preferred_os_type",
JSON_EXTRACT(properties, '$.preferredLocation') as "preferred_location",
JSON_EXTRACT(properties, '$.storageProfile') as "storage_profile",
JSON_EXTRACT(properties, '$.terminalSettings') as "terminal_settings",
JSON_EXTRACT(properties, '$.preferredShellType') as "preferred_shell_type",
location,
userSettingsName
FROM azure.cloud_shell.user_settings_with_locations
WHERE location = 'replace-me' AND userSettingsName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.preferredOsType') as "preferred_os_type",
json_extract_path_text(properties, '$.preferredLocation') as "preferred_location",
json_extract_path_text(properties, '$.storageProfile') as "storage_profile",
json_extract_path_text(properties, '$.terminalSettings') as "terminal_settings",
json_extract_path_text(properties, '$.preferredShellType') as "preferred_shell_type",
location,
userSettingsName
FROM azure.cloud_shell.user_settings_with_locations
WHERE location = 'replace-me' AND userSettingsName = 'replace-me';
```

</TabItem>
</Tabs>
