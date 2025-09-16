--- 
title: vw_mam_user_device_by_device_names
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_mam_user_device_by_device_names
  - intune
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_mam_user_device_by_device_names</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_mam_user_device_by_device_names</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.intune.vw_mam_user_device_by_device_names" /></td></tr>
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
location as location,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.userId') as "user_id",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.platform') as "platform",
JSON_EXTRACT(properties, '$.platformVersion') as "platform_version",
JSON_EXTRACT(properties, '$.deviceType') as "device_type",
hostName,
userName,
deviceName
FROM azure_extras.intune.mam_user_device_by_device_names
WHERE hostName = 'replace-me' AND userName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.userId') as "user_id",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.platform') as "platform",
json_extract_path_text(properties, '$.platformVersion') as "platform_version",
json_extract_path_text(properties, '$.deviceType') as "device_type",
hostName,
userName,
deviceName
FROM azure_extras.intune.mam_user_device_by_device_names
WHERE hostName = 'replace-me' AND userName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
</Tabs>
