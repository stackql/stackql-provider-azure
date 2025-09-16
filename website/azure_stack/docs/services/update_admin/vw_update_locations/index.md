--- 
title: vw_update_locations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_update_locations
  - update_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_update_locations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_update_locations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.update_admin.vw_update_locations" /></td></tr>
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
JSON_EXTRACT(properties, '$.oemFamily') as "oem_family",
JSON_EXTRACT(properties, '$.hardwareModel') as "hardware_model",
JSON_EXTRACT(properties, '$.packageVersions') as "package_versions",
JSON_EXTRACT(properties, '$.currentVersion') as "current_version",
JSON_EXTRACT(properties, '$.currentOemVersion') as "current_oem_version",
JSON_EXTRACT(properties, '$.lastUpdated') as "last_updated",
JSON_EXTRACT(properties, '$.lastChecked') as "last_checked",
JSON_EXTRACT(properties, '$.state') as "state",
subscriptionId,
resourceGroupName,
updateLocation
FROM azure_stack.update_admin.update_locations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me';
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
json_extract_path_text(properties, '$.oemFamily') as "oem_family",
json_extract_path_text(properties, '$.hardwareModel') as "hardware_model",
json_extract_path_text(properties, '$.packageVersions') as "package_versions",
json_extract_path_text(properties, '$.currentVersion') as "current_version",
json_extract_path_text(properties, '$.currentOemVersion') as "current_oem_version",
json_extract_path_text(properties, '$.lastUpdated') as "last_updated",
json_extract_path_text(properties, '$.lastChecked') as "last_checked",
json_extract_path_text(properties, '$.state') as "state",
subscriptionId,
resourceGroupName,
updateLocation
FROM azure_stack.update_admin.update_locations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me';
```

</TabItem>
</Tabs>
