--- 
title: vw_dataflow_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_dataflow_endpoints
  - iotoperations
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

Creates, updates, deletes, gets or lists a <code>vw_dataflow_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_dataflow_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iotoperations.vw_dataflow_endpoints" /></td></tr>
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
extendedLocation as extended_location,
JSON_EXTRACT(properties, '$.endpointType') as "endpoint_type",
JSON_EXTRACT(properties, '$.dataExplorerSettings') as "data_explorer_settings",
JSON_EXTRACT(properties, '$.dataLakeStorageSettings') as "data_lake_storage_settings",
JSON_EXTRACT(properties, '$.fabricOneLakeSettings') as "fabric_one_lake_settings",
JSON_EXTRACT(properties, '$.kafkaSettings') as "kafka_settings",
JSON_EXTRACT(properties, '$.localStorageSettings') as "local_storage_settings",
JSON_EXTRACT(properties, '$.mqttSettings') as "mqtt_settings",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
instanceName,
dataflowEndpointName
FROM azure.iotoperations.dataflow_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND instanceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
extendedLocation as extended_location,
json_extract_path_text(properties, '$.endpointType') as "endpoint_type",
json_extract_path_text(properties, '$.dataExplorerSettings') as "data_explorer_settings",
json_extract_path_text(properties, '$.dataLakeStorageSettings') as "data_lake_storage_settings",
json_extract_path_text(properties, '$.fabricOneLakeSettings') as "fabric_one_lake_settings",
json_extract_path_text(properties, '$.kafkaSettings') as "kafka_settings",
json_extract_path_text(properties, '$.localStorageSettings') as "local_storage_settings",
json_extract_path_text(properties, '$.mqttSettings') as "mqtt_settings",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
instanceName,
dataflowEndpointName
FROM azure.iotoperations.dataflow_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND instanceName = 'replace-me';
```

</TabItem>
</Tabs>
