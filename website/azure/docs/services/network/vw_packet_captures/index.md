--- 
title: vw_packet_captures
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_packet_captures
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_packet_captures</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_packet_captures</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_packet_captures" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.target') as "target",
JSON_EXTRACT(properties, '$.scope') as "scope",
JSON_EXTRACT(properties, '$.targetType') as "target_type",
JSON_EXTRACT(properties, '$.bytesToCapturePerPacket') as "bytes_to_capture_per_packet",
JSON_EXTRACT(properties, '$.totalBytesPerSession') as "total_bytes_per_session",
JSON_EXTRACT(properties, '$.timeLimitInSeconds') as "time_limit_in_seconds",
JSON_EXTRACT(properties, '$.storageLocation') as "storage_location",
JSON_EXTRACT(properties, '$.filters') as "filters",
JSON_EXTRACT(properties, '$.continuousCapture') as "continuous_capture",
JSON_EXTRACT(properties, '$.captureSettings') as "capture_settings",
subscriptionId,
resourceGroupName,
networkWatcherName,
packetCaptureName
FROM azure.network.packet_captures
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkWatcherName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.target') as "target",
json_extract_path_text(properties, '$.scope') as "scope",
json_extract_path_text(properties, '$.targetType') as "target_type",
json_extract_path_text(properties, '$.bytesToCapturePerPacket') as "bytes_to_capture_per_packet",
json_extract_path_text(properties, '$.totalBytesPerSession') as "total_bytes_per_session",
json_extract_path_text(properties, '$.timeLimitInSeconds') as "time_limit_in_seconds",
json_extract_path_text(properties, '$.storageLocation') as "storage_location",
json_extract_path_text(properties, '$.filters') as "filters",
json_extract_path_text(properties, '$.continuousCapture') as "continuous_capture",
json_extract_path_text(properties, '$.captureSettings') as "capture_settings",
subscriptionId,
resourceGroupName,
networkWatcherName,
packetCaptureName
FROM azure.network.packet_captures
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkWatcherName = 'replace-me';
```

</TabItem>
</Tabs>
