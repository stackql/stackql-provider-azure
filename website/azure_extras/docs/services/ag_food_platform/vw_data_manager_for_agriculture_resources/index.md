--- 
title: vw_data_manager_for_agriculture_resources
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_data_manager_for_agriculture_resources
  - ag_food_platform
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_data_manager_for_agriculture_resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_data_manager_for_agriculture_resources</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.ag_food_platform.vw_data_manager_for_agriculture_resources" /></td></tr>
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
tags as tags,
identity as identity,
JSON_EXTRACT(properties, '$.instanceUri') as "instance_uri",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.sensorIntegration') as "sensor_integration",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
subscriptionId,
resourceGroupName,
dataManagerForAgricultureResourceName
FROM azure_extras.ag_food_platform.data_manager_for_agriculture_resources
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
json_extract_path_text(properties, '$.instanceUri') as "instance_uri",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.sensorIntegration') as "sensor_integration",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
subscriptionId,
resourceGroupName,
dataManagerForAgricultureResourceName
FROM azure_extras.ag_food_platform.data_manager_for_agriculture_resources
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
