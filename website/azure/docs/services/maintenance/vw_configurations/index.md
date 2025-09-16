--- 
title: vw_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_configurations
  - maintenance
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

Creates, updates, deletes, gets or lists a <code>vw_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.maintenance.vw_configurations" /></td></tr>
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
systemData as system_data,
tags as tags,
JSON_EXTRACT(properties, '$.namespace') as "namespace",
JSON_EXTRACT(properties, '$.extensionProperties') as "extension_properties",
JSON_EXTRACT(properties, '$.maintenanceScope') as "maintenance_scope",
JSON_EXTRACT(properties, '$.maintenanceWindow') as "maintenance_window",
JSON_EXTRACT(properties, '$.visibility') as "visibility",
JSON_EXTRACT(properties, '$.installPatches') as "install_patches",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.maintenance.configurations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
systemData as system_data,
tags as tags,
json_extract_path_text(properties, '$.namespace') as "namespace",
json_extract_path_text(properties, '$.extensionProperties') as "extension_properties",
json_extract_path_text(properties, '$.maintenanceScope') as "maintenance_scope",
json_extract_path_text(properties, '$.maintenanceWindow') as "maintenance_window",
json_extract_path_text(properties, '$.visibility') as "visibility",
json_extract_path_text(properties, '$.installPatches') as "install_patches",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.maintenance.configurations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
