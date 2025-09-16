--- 
title: vw_namespaces
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_namespaces
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

Creates, updates, deletes, gets or lists a <code>vw_namespaces</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_namespaces</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_bus.vw_namespaces" /></td></tr>
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
sku as sku,
identity as identity,
systemData as system_data,
tags as tags,
JSON_EXTRACT(properties, '$.minimumTlsVersion') as "minimum_tls_version",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.createdAt') as "created_at",
JSON_EXTRACT(properties, '$.updatedAt') as "updated_at",
JSON_EXTRACT(properties, '$.serviceBusEndpoint') as "service_bus_endpoint",
JSON_EXTRACT(properties, '$.metricId') as "metric_id",
JSON_EXTRACT(properties, '$.zoneRedundant') as "zone_redundant",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.disableLocalAuth') as "disable_local_auth",
JSON_EXTRACT(properties, '$.alternateName') as "alternate_name",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.premiumMessagingPartitions') as "premium_messaging_partitions",
subscriptionId,
resourceGroupName,
namespaceName
FROM azure.service_bus.namespaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
sku as sku,
identity as identity,
systemData as system_data,
tags as tags,
json_extract_path_text(properties, '$.minimumTlsVersion') as "minimum_tls_version",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.createdAt') as "created_at",
json_extract_path_text(properties, '$.updatedAt') as "updated_at",
json_extract_path_text(properties, '$.serviceBusEndpoint') as "service_bus_endpoint",
json_extract_path_text(properties, '$.metricId') as "metric_id",
json_extract_path_text(properties, '$.zoneRedundant') as "zone_redundant",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.disableLocalAuth') as "disable_local_auth",
json_extract_path_text(properties, '$.alternateName') as "alternate_name",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.premiumMessagingPartitions') as "premium_messaging_partitions",
subscriptionId,
resourceGroupName,
namespaceName
FROM azure.service_bus.namespaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
