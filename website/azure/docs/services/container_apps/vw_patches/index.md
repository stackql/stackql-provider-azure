--- 
title: vw_patches
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_patches
  - container_apps
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

Creates, updates, deletes, gets or lists a <code>vw_patches</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_patches</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_apps.vw_patches" /></td></tr>
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
JSON_EXTRACT(properties, '$.targetEnvironmentId') as "target_environment_id",
JSON_EXTRACT(properties, '$.targetContainerAppId') as "target_container_app_id",
JSON_EXTRACT(properties, '$.targetRevisionId') as "target_revision_id",
JSON_EXTRACT(properties, '$.patchApplyStatus') as "patch_apply_status",
JSON_EXTRACT(properties, '$.createdAt') as "created_at",
JSON_EXTRACT(properties, '$.lastModifiedAt') as "last_modified_at",
JSON_EXTRACT(properties, '$.patchDetails') as "patch_details",
subscriptionId,
resourceGroupName,
containerAppName,
patchName
FROM azure.container_apps.patches
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND containerAppName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.targetEnvironmentId') as "target_environment_id",
json_extract_path_text(properties, '$.targetContainerAppId') as "target_container_app_id",
json_extract_path_text(properties, '$.targetRevisionId') as "target_revision_id",
json_extract_path_text(properties, '$.patchApplyStatus') as "patch_apply_status",
json_extract_path_text(properties, '$.createdAt') as "created_at",
json_extract_path_text(properties, '$.lastModifiedAt') as "last_modified_at",
json_extract_path_text(properties, '$.patchDetails') as "patch_details",
subscriptionId,
resourceGroupName,
containerAppName,
patchName
FROM azure.container_apps.patches
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND containerAppName = 'replace-me';
```

</TabItem>
</Tabs>
