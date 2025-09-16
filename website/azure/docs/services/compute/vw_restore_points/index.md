--- 
title: vw_restore_points
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_restore_points
  - compute
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

Creates, updates, deletes, gets or lists a <code>vw_restore_points</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_restore_points</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_restore_points" /></td></tr>
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
JSON_EXTRACT(properties, '$.excludeDisks') as "exclude_disks",
JSON_EXTRACT(properties, '$.sourceMetadata') as "source_metadata",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.consistencyMode') as "consistency_mode",
JSON_EXTRACT(properties, '$.timeCreated') as "time_created",
JSON_EXTRACT(properties, '$.sourceRestorePoint') as "source_restore_point",
JSON_EXTRACT(properties, '$.instanceView') as "instance_view",
subscriptionId,
resourceGroupName,
restorePointCollectionName,
restorePointName
FROM azure.compute.restore_points
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND restorePointCollectionName = 'replace-me' AND restorePointName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.excludeDisks') as "exclude_disks",
json_extract_path_text(properties, '$.sourceMetadata') as "source_metadata",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.consistencyMode') as "consistency_mode",
json_extract_path_text(properties, '$.timeCreated') as "time_created",
json_extract_path_text(properties, '$.sourceRestorePoint') as "source_restore_point",
json_extract_path_text(properties, '$.instanceView') as "instance_view",
subscriptionId,
resourceGroupName,
restorePointCollectionName,
restorePointName
FROM azure.compute.restore_points
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND restorePointCollectionName = 'replace-me' AND restorePointName = 'replace-me';
```

</TabItem>
</Tabs>
