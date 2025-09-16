--- 
title: vw_desktops
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_desktops
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

Creates, updates, deletes, gets or lists a <code>vw_desktops</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_desktops</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.desktop_virtualization.vw_desktops" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.iconHash') as "icon_hash",
JSON_EXTRACT(properties, '$.iconContent') as "icon_content",
subscriptionId,
resourceGroupName,
applicationGroupName,
desktopName
FROM azure.desktop_virtualization.desktops
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND applicationGroupName = 'replace-me';
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
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.iconHash') as "icon_hash",
json_extract_path_text(properties, '$.iconContent') as "icon_content",
subscriptionId,
resourceGroupName,
applicationGroupName,
desktopName
FROM azure.desktop_virtualization.desktops
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND applicationGroupName = 'replace-me';
```

</TabItem>
</Tabs>
