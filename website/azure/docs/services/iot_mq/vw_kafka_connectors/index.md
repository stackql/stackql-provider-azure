--- 
title: vw_kafka_connectors
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_kafka_connectors
  - iot_mq
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

Creates, updates, deletes, gets or lists a <code>vw_kafka_connectors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_kafka_connectors</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_mq.vw_kafka_connectors" /></td></tr>
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
location as location,
extendedLocation as extended_location,
tags as tags,
JSON_EXTRACT(properties, '$.clientIdPrefix') as "client_id_prefix",
JSON_EXTRACT(properties, '$.image') as "image",
JSON_EXTRACT(properties, '$.instances') as "instances",
JSON_EXTRACT(properties, '$.kafkaConnection') as "kafka_connection",
JSON_EXTRACT(properties, '$.localBrokerConnection') as "local_broker_connection",
JSON_EXTRACT(properties, '$.logLevel') as "log_level",
JSON_EXTRACT(properties, '$.nodeTolerations') as "node_tolerations",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
mqName,
kafkaConnectorName
FROM azure.iot_mq.kafka_connectors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND mqName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.clientIdPrefix') as "client_id_prefix",
json_extract_path_text(properties, '$.image') as "image",
json_extract_path_text(properties, '$.instances') as "instances",
json_extract_path_text(properties, '$.kafkaConnection') as "kafka_connection",
json_extract_path_text(properties, '$.localBrokerConnection') as "local_broker_connection",
json_extract_path_text(properties, '$.logLevel') as "log_level",
json_extract_path_text(properties, '$.nodeTolerations') as "node_tolerations",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
mqName,
kafkaConnectorName
FROM azure.iot_mq.kafka_connectors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND mqName = 'replace-me';
```

</TabItem>
</Tabs>
