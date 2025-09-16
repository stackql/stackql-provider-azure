--- 
title: vw_topics
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_topics
  - service_bus
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

Creates, updates, deletes, gets or lists a <code>vw_topics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_topics</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_bus.vw_topics" /></td></tr>
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
JSON_EXTRACT(properties, '$.sizeInBytes') as "size_in_bytes",
JSON_EXTRACT(properties, '$.createdAt') as "created_at",
JSON_EXTRACT(properties, '$.updatedAt') as "updated_at",
JSON_EXTRACT(properties, '$.accessedAt') as "accessed_at",
JSON_EXTRACT(properties, '$.subscriptionCount') as "subscription_count",
JSON_EXTRACT(properties, '$.countDetails') as "count_details",
JSON_EXTRACT(properties, '$.defaultMessageTimeToLive') as "default_message_time_to_live",
JSON_EXTRACT(properties, '$.maxSizeInMegabytes') as "max_size_in_megabytes",
JSON_EXTRACT(properties, '$.maxMessageSizeInKilobytes') as "max_message_size_in_kilobytes",
JSON_EXTRACT(properties, '$.requiresDuplicateDetection') as "requires_duplicate_detection",
JSON_EXTRACT(properties, '$.duplicateDetectionHistoryTimeWindow') as "duplicate_detection_history_time_window",
JSON_EXTRACT(properties, '$.enableBatchedOperations') as "enable_batched_operations",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.supportOrdering') as "support_ordering",
JSON_EXTRACT(properties, '$.autoDeleteOnIdle') as "auto_delete_on_idle",
JSON_EXTRACT(properties, '$.enablePartitioning') as "enable_partitioning",
JSON_EXTRACT(properties, '$.enableExpress') as "enable_express",
subscriptionId,
resourceGroupName,
namespaceName,
topicName
FROM azure.service_bus.topics
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND namespaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.sizeInBytes') as "size_in_bytes",
json_extract_path_text(properties, '$.createdAt') as "created_at",
json_extract_path_text(properties, '$.updatedAt') as "updated_at",
json_extract_path_text(properties, '$.accessedAt') as "accessed_at",
json_extract_path_text(properties, '$.subscriptionCount') as "subscription_count",
json_extract_path_text(properties, '$.countDetails') as "count_details",
json_extract_path_text(properties, '$.defaultMessageTimeToLive') as "default_message_time_to_live",
json_extract_path_text(properties, '$.maxSizeInMegabytes') as "max_size_in_megabytes",
json_extract_path_text(properties, '$.maxMessageSizeInKilobytes') as "max_message_size_in_kilobytes",
json_extract_path_text(properties, '$.requiresDuplicateDetection') as "requires_duplicate_detection",
json_extract_path_text(properties, '$.duplicateDetectionHistoryTimeWindow') as "duplicate_detection_history_time_window",
json_extract_path_text(properties, '$.enableBatchedOperations') as "enable_batched_operations",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.supportOrdering') as "support_ordering",
json_extract_path_text(properties, '$.autoDeleteOnIdle') as "auto_delete_on_idle",
json_extract_path_text(properties, '$.enablePartitioning') as "enable_partitioning",
json_extract_path_text(properties, '$.enableExpress') as "enable_express",
subscriptionId,
resourceGroupName,
namespaceName,
topicName
FROM azure.service_bus.topics
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND namespaceName = 'replace-me';
```

</TabItem>
</Tabs>
