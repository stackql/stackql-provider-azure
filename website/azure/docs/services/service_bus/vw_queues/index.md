--- 
title: vw_queues
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_queues
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

Creates, updates, deletes, gets or lists a <code>vw_queues</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_queues</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_bus.vw_queues" /></td></tr>
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
JSON_EXTRACT(properties, '$.countDetails') as "count_details",
JSON_EXTRACT(properties, '$.createdAt') as "created_at",
JSON_EXTRACT(properties, '$.updatedAt') as "updated_at",
JSON_EXTRACT(properties, '$.accessedAt') as "accessed_at",
JSON_EXTRACT(properties, '$.sizeInBytes') as "size_in_bytes",
JSON_EXTRACT(properties, '$.messageCount') as "message_count",
JSON_EXTRACT(properties, '$.lockDuration') as "lock_duration",
JSON_EXTRACT(properties, '$.maxSizeInMegabytes') as "max_size_in_megabytes",
JSON_EXTRACT(properties, '$.maxMessageSizeInKilobytes') as "max_message_size_in_kilobytes",
JSON_EXTRACT(properties, '$.requiresDuplicateDetection') as "requires_duplicate_detection",
JSON_EXTRACT(properties, '$.requiresSession') as "requires_session",
JSON_EXTRACT(properties, '$.defaultMessageTimeToLive') as "default_message_time_to_live",
JSON_EXTRACT(properties, '$.deadLetteringOnMessageExpiration') as "dead_lettering_on_message_expiration",
JSON_EXTRACT(properties, '$.duplicateDetectionHistoryTimeWindow') as "duplicate_detection_history_time_window",
JSON_EXTRACT(properties, '$.maxDeliveryCount') as "max_delivery_count",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.enableBatchedOperations') as "enable_batched_operations",
JSON_EXTRACT(properties, '$.autoDeleteOnIdle') as "auto_delete_on_idle",
JSON_EXTRACT(properties, '$.enablePartitioning') as "enable_partitioning",
JSON_EXTRACT(properties, '$.enableExpress') as "enable_express",
JSON_EXTRACT(properties, '$.forwardTo') as "forward_to",
JSON_EXTRACT(properties, '$.forwardDeadLetteredMessagesTo') as "forward_dead_lettered_messages_to",
subscriptionId,
resourceGroupName,
namespaceName,
queueName
FROM azure.service_bus.queues
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND namespaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.countDetails') as "count_details",
json_extract_path_text(properties, '$.createdAt') as "created_at",
json_extract_path_text(properties, '$.updatedAt') as "updated_at",
json_extract_path_text(properties, '$.accessedAt') as "accessed_at",
json_extract_path_text(properties, '$.sizeInBytes') as "size_in_bytes",
json_extract_path_text(properties, '$.messageCount') as "message_count",
json_extract_path_text(properties, '$.lockDuration') as "lock_duration",
json_extract_path_text(properties, '$.maxSizeInMegabytes') as "max_size_in_megabytes",
json_extract_path_text(properties, '$.maxMessageSizeInKilobytes') as "max_message_size_in_kilobytes",
json_extract_path_text(properties, '$.requiresDuplicateDetection') as "requires_duplicate_detection",
json_extract_path_text(properties, '$.requiresSession') as "requires_session",
json_extract_path_text(properties, '$.defaultMessageTimeToLive') as "default_message_time_to_live",
json_extract_path_text(properties, '$.deadLetteringOnMessageExpiration') as "dead_lettering_on_message_expiration",
json_extract_path_text(properties, '$.duplicateDetectionHistoryTimeWindow') as "duplicate_detection_history_time_window",
json_extract_path_text(properties, '$.maxDeliveryCount') as "max_delivery_count",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.enableBatchedOperations') as "enable_batched_operations",
json_extract_path_text(properties, '$.autoDeleteOnIdle') as "auto_delete_on_idle",
json_extract_path_text(properties, '$.enablePartitioning') as "enable_partitioning",
json_extract_path_text(properties, '$.enableExpress') as "enable_express",
json_extract_path_text(properties, '$.forwardTo') as "forward_to",
json_extract_path_text(properties, '$.forwardDeadLetteredMessagesTo') as "forward_dead_lettered_messages_to",
subscriptionId,
resourceGroupName,
namespaceName,
queueName
FROM azure.service_bus.queues
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND namespaceName = 'replace-me';
```

</TabItem>
</Tabs>
