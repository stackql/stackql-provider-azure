--- 
title: vw_namespaces
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_namespaces
  - notification_hubs
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.notification_hubs.vw_namespaces" /></td></tr>
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
sku as sku,
JSON_EXTRACT(properties, '$.name') as "name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.enabled') as "enabled",
JSON_EXTRACT(properties, '$.critical') as "critical",
JSON_EXTRACT(properties, '$.subscriptionId') as "subscription_id",
JSON_EXTRACT(properties, '$.region') as "region",
JSON_EXTRACT(properties, '$.metricId') as "metric_id",
JSON_EXTRACT(properties, '$.createdAt') as "created_at",
JSON_EXTRACT(properties, '$.updatedAt') as "updated_at",
JSON_EXTRACT(properties, '$.namespaceType') as "namespace_type",
JSON_EXTRACT(properties, '$.replicationRegion') as "replication_region",
JSON_EXTRACT(properties, '$.zoneRedundancy') as "zone_redundancy",
JSON_EXTRACT(properties, '$.networkAcls') as "network_acls",
JSON_EXTRACT(properties, '$.pnsCredentials') as "pns_credentials",
JSON_EXTRACT(properties, '$.serviceBusEndpoint') as "service_bus_endpoint",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.scaleUnit') as "scale_unit",
JSON_EXTRACT(properties, '$.dataCenter') as "data_center",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
subscriptionId,
resourceGroupName,
namespaceName
FROM azure.notification_hubs.namespaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
sku as sku,
json_extract_path_text(properties, '$.name') as "name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.enabled') as "enabled",
json_extract_path_text(properties, '$.critical') as "critical",
json_extract_path_text(properties, '$.subscriptionId') as "subscription_id",
json_extract_path_text(properties, '$.region') as "region",
json_extract_path_text(properties, '$.metricId') as "metric_id",
json_extract_path_text(properties, '$.createdAt') as "created_at",
json_extract_path_text(properties, '$.updatedAt') as "updated_at",
json_extract_path_text(properties, '$.namespaceType') as "namespace_type",
json_extract_path_text(properties, '$.replicationRegion') as "replication_region",
json_extract_path_text(properties, '$.zoneRedundancy') as "zone_redundancy",
json_extract_path_text(properties, '$.networkAcls') as "network_acls",
json_extract_path_text(properties, '$.pnsCredentials') as "pns_credentials",
json_extract_path_text(properties, '$.serviceBusEndpoint') as "service_bus_endpoint",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.scaleUnit') as "scale_unit",
json_extract_path_text(properties, '$.dataCenter') as "data_center",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
subscriptionId,
resourceGroupName,
namespaceName
FROM azure.notification_hubs.namespaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
