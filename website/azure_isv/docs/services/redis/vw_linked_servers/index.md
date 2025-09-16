--- 
title: vw_linked_servers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_linked_servers
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

Creates, updates, deletes, gets or lists a <code>vw_linked_servers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_linked_servers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.redis.vw_linked_servers" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.linkedRedisCacheId') as "linked_redis_cache_id",
JSON_EXTRACT(properties, '$.linkedRedisCacheLocation') as "linked_redis_cache_location",
JSON_EXTRACT(properties, '$.serverRole') as "server_role",
JSON_EXTRACT(properties, '$.geoReplicatedPrimaryHostName') as "geo_replicated_primary_host_name",
JSON_EXTRACT(properties, '$.primaryHostName') as "primary_host_name",
subscriptionId,
resourceGroupName,
name,
linkedServerName
FROM azure_isv.redis.linked_servers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND name = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.linkedRedisCacheId') as "linked_redis_cache_id",
json_extract_path_text(properties, '$.linkedRedisCacheLocation') as "linked_redis_cache_location",
json_extract_path_text(properties, '$.serverRole') as "server_role",
json_extract_path_text(properties, '$.geoReplicatedPrimaryHostName') as "geo_replicated_primary_host_name",
json_extract_path_text(properties, '$.primaryHostName') as "primary_host_name",
subscriptionId,
resourceGroupName,
name,
linkedServerName
FROM azure_isv.redis.linked_servers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND name = 'replace-me';
```

</TabItem>
</Tabs>
