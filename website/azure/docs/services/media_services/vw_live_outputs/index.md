--- 
title: vw_live_outputs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_live_outputs
  - media_services
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

Creates, updates, deletes, gets or lists a <code>vw_live_outputs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_live_outputs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.media_services.vw_live_outputs" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.assetName') as "asset_name",
JSON_EXTRACT(properties, '$.archiveWindowLength') as "archive_window_length",
JSON_EXTRACT(properties, '$.rewindWindowLength') as "rewind_window_length",
JSON_EXTRACT(properties, '$.manifestName') as "manifest_name",
JSON_EXTRACT(properties, '$.hls') as "hls",
JSON_EXTRACT(properties, '$.outputSnapTime') as "output_snap_time",
JSON_EXTRACT(properties, '$.created') as "created",
JSON_EXTRACT(properties, '$.lastModified') as "last_modified",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.resourceState') as "resource_state",
subscriptionId,
resourceGroupName,
accountName,
liveEventName,
liveOutputName
FROM azure.media_services.live_outputs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND liveEventName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.assetName') as "asset_name",
json_extract_path_text(properties, '$.archiveWindowLength') as "archive_window_length",
json_extract_path_text(properties, '$.rewindWindowLength') as "rewind_window_length",
json_extract_path_text(properties, '$.manifestName') as "manifest_name",
json_extract_path_text(properties, '$.hls') as "hls",
json_extract_path_text(properties, '$.outputSnapTime') as "output_snap_time",
json_extract_path_text(properties, '$.created') as "created",
json_extract_path_text(properties, '$.lastModified') as "last_modified",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resourceState') as "resource_state",
subscriptionId,
resourceGroupName,
accountName,
liveEventName,
liveOutputName
FROM azure.media_services.live_outputs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND liveEventName = 'replace-me';
```

</TabItem>
</Tabs>
