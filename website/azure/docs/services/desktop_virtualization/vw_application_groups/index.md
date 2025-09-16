--- 
title: vw_application_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_application_groups
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

Creates, updates, deletes, gets or lists a <code>vw_application_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_application_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.desktop_virtualization.vw_application_groups" /></td></tr>
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
managedBy as managed_by,
kind as kind,
etag as etag,
identity as identity,
sku as sku,
plan as plan,
JSON_EXTRACT(properties, '$.objectId') as "object_id",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.hostPoolArmPath') as "host_pool_arm_path",
JSON_EXTRACT(properties, '$.workspaceArmPath') as "workspace_arm_path",
JSON_EXTRACT(properties, '$.applicationGroupType') as "application_group_type",
JSON_EXTRACT(properties, '$.cloudPcResource') as "cloud_pc_resource",
JSON_EXTRACT(properties, '$.showInFeed') as "show_in_feed",
subscriptionId,
resourceGroupName,
applicationGroupName
FROM azure.desktop_virtualization.application_groups
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
managedBy as managed_by,
kind as kind,
etag as etag,
identity as identity,
sku as sku,
plan as plan,
json_extract_path_text(properties, '$.objectId') as "object_id",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.hostPoolArmPath') as "host_pool_arm_path",
json_extract_path_text(properties, '$.workspaceArmPath') as "workspace_arm_path",
json_extract_path_text(properties, '$.applicationGroupType') as "application_group_type",
json_extract_path_text(properties, '$.cloudPcResource') as "cloud_pc_resource",
json_extract_path_text(properties, '$.showInFeed') as "show_in_feed",
subscriptionId,
resourceGroupName,
applicationGroupName
FROM azure.desktop_virtualization.application_groups
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
