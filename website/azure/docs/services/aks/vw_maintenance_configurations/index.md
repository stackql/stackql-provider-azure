--- 
title: vw_maintenance_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_maintenance_configurations
  - aks
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

Creates, updates, deletes, gets or lists a <code>vw_maintenance_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_maintenance_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.aks.vw_maintenance_configurations" /></td></tr>
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
JSON_EXTRACT(properties, '$.timeInWeek') as "time_in_week",
JSON_EXTRACT(properties, '$.notAllowedTime') as "not_allowed_time",
JSON_EXTRACT(properties, '$.maintenanceWindow') as "maintenance_window",
subscriptionId,
resourceGroupName,
resourceName,
configName
FROM azure.aks.maintenance_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.timeInWeek') as "time_in_week",
json_extract_path_text(properties, '$.notAllowedTime') as "not_allowed_time",
json_extract_path_text(properties, '$.maintenanceWindow') as "maintenance_window",
subscriptionId,
resourceGroupName,
resourceName,
configName
FROM azure.aks.maintenance_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
