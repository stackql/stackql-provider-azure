--- 
title: vw_redis_enterprises
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_redis_enterprises
  - redis_enterprise
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_redis_enterprises</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_redis_enterprises</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.redis_enterprise.vw_redis_enterprises" /></td></tr>
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
zones as zones,
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.highAvailability') as "high_availability",
JSON_EXTRACT(properties, '$.minimumTlsVersion') as "minimum_tls_version",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.hostName') as "host_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.redundancyMode') as "redundancy_mode",
JSON_EXTRACT(properties, '$.resourceState') as "resource_state",
JSON_EXTRACT(properties, '$.redisVersion') as "redis_version",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
subscriptionId,
resourceGroupName,
clusterName
FROM azure_isv.redis_enterprise.redis_enterprises
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
sku as sku,
zones as zones,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.highAvailability') as "high_availability",
json_extract_path_text(properties, '$.minimumTlsVersion') as "minimum_tls_version",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.hostName') as "host_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.redundancyMode') as "redundancy_mode",
json_extract_path_text(properties, '$.resourceState') as "resource_state",
json_extract_path_text(properties, '$.redisVersion') as "redis_version",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
subscriptionId,
resourceGroupName,
clusterName
FROM azure_isv.redis_enterprise.redis_enterprises
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
