--- 
title: vw_autoscale_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_autoscale_settings
  - monitor
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

Creates, updates, deletes, gets or lists a <code>vw_autoscale_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_autoscale_settings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.monitor.vw_autoscale_settings" /></td></tr>
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
JSON_EXTRACT(properties, '$.profiles') as "profiles",
JSON_EXTRACT(properties, '$.notifications') as "notifications",
JSON_EXTRACT(properties, '$.enabled') as "enabled",
JSON_EXTRACT(properties, '$.predictiveAutoscalePolicy') as "predictive_autoscale_policy",
JSON_EXTRACT(properties, '$.name') as "name",
JSON_EXTRACT(properties, '$.targetResourceUri') as "target_resource_uri",
JSON_EXTRACT(properties, '$.targetResourceLocation') as "target_resource_location",
subscriptionId,
resourceGroupName,
autoscaleSettingName
FROM azure.monitor.autoscale_settings
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
tags as tags,
json_extract_path_text(properties, '$.profiles') as "profiles",
json_extract_path_text(properties, '$.notifications') as "notifications",
json_extract_path_text(properties, '$.enabled') as "enabled",
json_extract_path_text(properties, '$.predictiveAutoscalePolicy') as "predictive_autoscale_policy",
json_extract_path_text(properties, '$.name') as "name",
json_extract_path_text(properties, '$.targetResourceUri') as "target_resource_uri",
json_extract_path_text(properties, '$.targetResourceLocation') as "target_resource_location",
subscriptionId,
resourceGroupName,
autoscaleSettingName
FROM azure.monitor.autoscale_settings
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
