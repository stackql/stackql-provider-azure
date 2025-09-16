--- 
title: vw_redis
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_redis
  - redis
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

Creates, updates, deletes, gets or lists a <code>vw_redis</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_redis</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.redis.vw_redis" /></td></tr>
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
zones as zones,
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.hostName') as "host_name",
JSON_EXTRACT(properties, '$.port') as "port",
JSON_EXTRACT(properties, '$.sslPort') as "ssl_port",
JSON_EXTRACT(properties, '$.accessKeys') as "access_keys",
JSON_EXTRACT(properties, '$.linkedServers') as "linked_servers",
JSON_EXTRACT(properties, '$.instances') as "instances",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.subnetId') as "subnet_id",
JSON_EXTRACT(properties, '$.staticIP') as "static_ip",
subscriptionId,
resourceGroupName,
name
FROM azure_isv.redis.redis
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
zones as zones,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.hostName') as "host_name",
json_extract_path_text(properties, '$.port') as "port",
json_extract_path_text(properties, '$.sslPort') as "ssl_port",
json_extract_path_text(properties, '$.accessKeys') as "access_keys",
json_extract_path_text(properties, '$.linkedServers') as "linked_servers",
json_extract_path_text(properties, '$.instances') as "instances",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.subnetId') as "subnet_id",
json_extract_path_text(properties, '$.staticIP') as "static_ip",
subscriptionId,
resourceGroupName,
name
FROM azure_isv.redis.redis
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
