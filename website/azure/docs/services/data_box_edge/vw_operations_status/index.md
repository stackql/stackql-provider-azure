--- 
title: vw_operations_status
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_operations_status
  - data_box_edge
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

Creates, updates, deletes, gets or lists a <code>vw_operations_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_operations_status</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_box_edge.vw_operations_status" /></td></tr>
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
status as status,
startTime as start_time,
endTime as end_time,
percentComplete as percent_complete,
error as error,
JSON_EXTRACT(properties, '$.jobType') as "job_type",
JSON_EXTRACT(properties, '$.currentStage') as "current_stage",
JSON_EXTRACT(properties, '$.downloadProgress') as "download_progress",
JSON_EXTRACT(properties, '$.installProgress') as "install_progress",
JSON_EXTRACT(properties, '$.totalRefreshErrors') as "total_refresh_errors",
JSON_EXTRACT(properties, '$.errorManifestFile') as "error_manifest_file",
JSON_EXTRACT(properties, '$.refreshedEntityId') as "refreshed_entity_id",
JSON_EXTRACT(properties, '$.folder') as "folder",
subscriptionId,
resourceGroupName,
deviceName,
name
FROM azure.data_box_edge.operations_status
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deviceName = 'replace-me' AND name = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
status as status,
startTime as start_time,
endTime as end_time,
percentComplete as percent_complete,
error as error,
json_extract_path_text(properties, '$.jobType') as "job_type",
json_extract_path_text(properties, '$.currentStage') as "current_stage",
json_extract_path_text(properties, '$.downloadProgress') as "download_progress",
json_extract_path_text(properties, '$.installProgress') as "install_progress",
json_extract_path_text(properties, '$.totalRefreshErrors') as "total_refresh_errors",
json_extract_path_text(properties, '$.errorManifestFile') as "error_manifest_file",
json_extract_path_text(properties, '$.refreshedEntityId') as "refreshed_entity_id",
json_extract_path_text(properties, '$.folder') as "folder",
subscriptionId,
resourceGroupName,
deviceName,
name
FROM azure.data_box_edge.operations_status
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deviceName = 'replace-me' AND name = 'replace-me';
```

</TabItem>
</Tabs>
