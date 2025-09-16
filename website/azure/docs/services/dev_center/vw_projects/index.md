--- 
title: vw_projects
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_projects
  - dev_center
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

Creates, updates, deletes, gets or lists a <code>vw_projects</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_projects</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.vw_projects" /></td></tr>
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
location as location,
tags as tags,
identity as identity,
JSON_EXTRACT(properties, '$.devCenterId') as "dev_center_id",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.maxDevBoxesPerUser') as "max_dev_boxes_per_user",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.catalogSettings') as "catalog_settings",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.devCenterUri') as "dev_center_uri",
subscriptionId,
resourceGroupName,
projectName
FROM azure.dev_center.projects
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
json_extract_path_text(properties, '$.devCenterId') as "dev_center_id",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.maxDevBoxesPerUser') as "max_dev_boxes_per_user",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.catalogSettings') as "catalog_settings",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.devCenterUri') as "dev_center_uri",
subscriptionId,
resourceGroupName,
projectName
FROM azure.dev_center.projects
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
