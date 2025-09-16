--- 
title: vw_databases
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_databases
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

Creates, updates, deletes, gets or lists a <code>vw_databases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_databases</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.redis_enterprise.vw_databases" /></td></tr>
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
JSON_EXTRACT(properties, '$.clientProtocol') as "client_protocol",
JSON_EXTRACT(properties, '$.port') as "port",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.resourceState') as "resource_state",
JSON_EXTRACT(properties, '$.clusteringPolicy') as "clustering_policy",
JSON_EXTRACT(properties, '$.evictionPolicy') as "eviction_policy",
JSON_EXTRACT(properties, '$.persistence') as "persistence",
JSON_EXTRACT(properties, '$.modules') as "modules",
JSON_EXTRACT(properties, '$.geoReplication') as "geo_replication",
JSON_EXTRACT(properties, '$.redisVersion') as "redis_version",
JSON_EXTRACT(properties, '$.deferUpgrade') as "defer_upgrade",
JSON_EXTRACT(properties, '$.accessKeysAuthentication') as "access_keys_authentication",
subscriptionId,
resourceGroupName,
clusterName,
databaseName
FROM azure_isv.redis_enterprise.databases
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.clientProtocol') as "client_protocol",
json_extract_path_text(properties, '$.port') as "port",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resourceState') as "resource_state",
json_extract_path_text(properties, '$.clusteringPolicy') as "clustering_policy",
json_extract_path_text(properties, '$.evictionPolicy') as "eviction_policy",
json_extract_path_text(properties, '$.persistence') as "persistence",
json_extract_path_text(properties, '$.modules') as "modules",
json_extract_path_text(properties, '$.geoReplication') as "geo_replication",
json_extract_path_text(properties, '$.redisVersion') as "redis_version",
json_extract_path_text(properties, '$.deferUpgrade') as "defer_upgrade",
json_extract_path_text(properties, '$.accessKeysAuthentication') as "access_keys_authentication",
subscriptionId,
resourceGroupName,
clusterName,
databaseName
FROM azure_isv.redis_enterprise.databases
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
</Tabs>
