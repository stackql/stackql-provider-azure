--- 
title: vw_move_resources
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_move_resources
  - resource_mover
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

Creates, updates, deletes, gets or lists a <code>vw_move_resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_move_resources</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.resource_mover.vw_move_resources" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.sourceId') as "source_id",
JSON_EXTRACT(properties, '$.targetId') as "target_id",
JSON_EXTRACT(properties, '$.existingTargetId') as "existing_target_id",
JSON_EXTRACT(properties, '$.resourceSettings') as "resource_settings",
JSON_EXTRACT(properties, '$.sourceResourceSettings') as "source_resource_settings",
JSON_EXTRACT(properties, '$.moveStatus') as "move_status",
JSON_EXTRACT(properties, '$.dependsOn') as "depends_on",
JSON_EXTRACT(properties, '$.dependsOnOverrides') as "depends_on_overrides",
JSON_EXTRACT(properties, '$.isResolveRequired') as "is_resolve_required",
JSON_EXTRACT(properties, '$.errors') as "errors",
subscriptionId,
resourceGroupName,
moveCollectionName,
moveResourceName
FROM azure.resource_mover.move_resources
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND moveCollectionName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.sourceId') as "source_id",
json_extract_path_text(properties, '$.targetId') as "target_id",
json_extract_path_text(properties, '$.existingTargetId') as "existing_target_id",
json_extract_path_text(properties, '$.resourceSettings') as "resource_settings",
json_extract_path_text(properties, '$.sourceResourceSettings') as "source_resource_settings",
json_extract_path_text(properties, '$.moveStatus') as "move_status",
json_extract_path_text(properties, '$.dependsOn') as "depends_on",
json_extract_path_text(properties, '$.dependsOnOverrides') as "depends_on_overrides",
json_extract_path_text(properties, '$.isResolveRequired') as "is_resolve_required",
json_extract_path_text(properties, '$.errors') as "errors",
subscriptionId,
resourceGroupName,
moveCollectionName,
moveResourceName
FROM azure.resource_mover.move_resources
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND moveCollectionName = 'replace-me';
```

</TabItem>
</Tabs>
