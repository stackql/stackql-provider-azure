--- 
title: vw_operation_results
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_operation_results
  - video_analyzer
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

Creates, updates, deletes, gets or lists a <code>vw_operation_results</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_operation_results</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.video_analyzer.vw_operation_results" /></td></tr>
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
JSON_EXTRACT(properties, '$.storageAccounts') as "storage_accounts",
JSON_EXTRACT(properties, '$.endpoints') as "endpoints",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.iotHubs') as "iot_hubs",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.networkAccessControl') as "network_access_control",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
subscriptionId,
locationName,
operationId
FROM azure.video_analyzer.operation_results
WHERE subscriptionId = 'replace-me' AND locationName = 'replace-me' AND operationId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
json_extract_path_text(properties, '$.storageAccounts') as "storage_accounts",
json_extract_path_text(properties, '$.endpoints') as "endpoints",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.iotHubs') as "iot_hubs",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.networkAccessControl') as "network_access_control",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
subscriptionId,
locationName,
operationId
FROM azure.video_analyzer.operation_results
WHERE subscriptionId = 'replace-me' AND locationName = 'replace-me' AND operationId = 'replace-me';
```

</TabItem>
</Tabs>
