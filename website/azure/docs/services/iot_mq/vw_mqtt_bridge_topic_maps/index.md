--- 
title: vw_mqtt_bridge_topic_maps
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_mqtt_bridge_topic_maps
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

Creates, updates, deletes, gets or lists a <code>vw_mqtt_bridge_topic_maps</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_mqtt_bridge_topic_maps</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_mq.vw_mqtt_bridge_topic_maps" /></td></tr>
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
JSON_EXTRACT(properties, '$.mqttBridgeConnectorRef') as "mqtt_bridge_connector_ref",
JSON_EXTRACT(properties, '$.routes') as "routes",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
mqName,
mqttBridgeConnectorName,
topicMapName
FROM azure.iot_mq.mqtt_bridge_topic_maps
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND mqName = 'replace-me' AND mqttBridgeConnectorName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.mqttBridgeConnectorRef') as "mqtt_bridge_connector_ref",
json_extract_path_text(properties, '$.routes') as "routes",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
mqName,
mqttBridgeConnectorName,
topicMapName
FROM azure.iot_mq.mqtt_bridge_topic_maps
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND mqName = 'replace-me' AND mqttBridgeConnectorName = 'replace-me';
```

</TabItem>
</Tabs>
