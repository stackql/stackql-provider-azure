--- 
title: vw_operation_results
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_operation_results
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

Creates, updates, deletes, gets or lists a <code>vw_operation_results</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_operation_results</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.media_services.vw_operation_results" /></td></tr>
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
systemData as system_data,
identity as identity,
JSON_EXTRACT(properties, '$.mediaServiceId') as "media_service_id",
JSON_EXTRACT(properties, '$.storageAccounts') as "storage_accounts",
JSON_EXTRACT(properties, '$.storageAuthentication') as "storage_authentication",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.keyDelivery') as "key_delivery",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.minimumTlsVersion') as "minimum_tls_version",
subscriptionId,
locationName,
operationId
FROM azure.media_services.operation_results
WHERE subscriptionId = 'replace-me' AND locationName = 'replace-me' AND operationId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
systemData as system_data,
identity as identity,
json_extract_path_text(properties, '$.mediaServiceId') as "media_service_id",
json_extract_path_text(properties, '$.storageAccounts') as "storage_accounts",
json_extract_path_text(properties, '$.storageAuthentication') as "storage_authentication",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.keyDelivery') as "key_delivery",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.minimumTlsVersion') as "minimum_tls_version",
subscriptionId,
locationName,
operationId
FROM azure.media_services.operation_results
WHERE subscriptionId = 'replace-me' AND locationName = 'replace-me' AND operationId = 'replace-me';
```

</TabItem>
</Tabs>
