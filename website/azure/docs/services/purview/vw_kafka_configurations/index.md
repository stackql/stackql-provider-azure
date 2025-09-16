--- 
title: vw_kafka_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_kafka_configurations
  - purview
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

Creates, updates, deletes, gets or lists a <code>vw_kafka_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_kafka_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.purview.vw_kafka_configurations" /></td></tr>
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
systemData as system_data,
type as type,
JSON_EXTRACT(properties, '$.consumerGroup') as "consumer_group",
JSON_EXTRACT(properties, '$.credentials') as "credentials",
JSON_EXTRACT(properties, '$.eventHubPartitionId') as "event_hub_partition_id",
JSON_EXTRACT(properties, '$.eventHubResourceId') as "event_hub_resource_id",
JSON_EXTRACT(properties, '$.eventHubType') as "event_hub_type",
JSON_EXTRACT(properties, '$.eventStreamingState') as "event_streaming_state",
JSON_EXTRACT(properties, '$.eventStreamingType') as "event_streaming_type",
subscriptionId,
resourceGroupName,
accountName,
kafkaConfigurationName
FROM azure.purview.kafka_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
systemData as system_data,
type as type,
json_extract_path_text(properties, '$.consumerGroup') as "consumer_group",
json_extract_path_text(properties, '$.credentials') as "credentials",
json_extract_path_text(properties, '$.eventHubPartitionId') as "event_hub_partition_id",
json_extract_path_text(properties, '$.eventHubResourceId') as "event_hub_resource_id",
json_extract_path_text(properties, '$.eventHubType') as "event_hub_type",
json_extract_path_text(properties, '$.eventStreamingState') as "event_streaming_state",
json_extract_path_text(properties, '$.eventStreamingType') as "event_streaming_type",
subscriptionId,
resourceGroupName,
accountName,
kafkaConfigurationName
FROM azure.purview.kafka_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
