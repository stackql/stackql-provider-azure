--- 
title: vw_mongo_clusters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_mongo_clusters
  - mongo_db
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

Creates, updates, deletes, gets or lists a <code>vw_mongo_clusters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_mongo_clusters</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.mongo_db.vw_mongo_clusters" /></td></tr>
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
JSON_EXTRACT(properties, '$.createMode') as "create_mode",
JSON_EXTRACT(properties, '$.restoreParameters') as "restore_parameters",
JSON_EXTRACT(properties, '$.replicaParameters') as "replica_parameters",
JSON_EXTRACT(properties, '$.administrator') as "administrator",
JSON_EXTRACT(properties, '$.serverVersion') as "server_version",
JSON_EXTRACT(properties, '$.connectionString') as "connection_string",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.clusterStatus') as "cluster_status",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.highAvailability') as "high_availability",
JSON_EXTRACT(properties, '$.storage') as "storage",
JSON_EXTRACT(properties, '$.sharding') as "sharding",
JSON_EXTRACT(properties, '$.compute') as "compute",
JSON_EXTRACT(properties, '$.backup') as "backup",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.previewFeatures') as "preview_features",
JSON_EXTRACT(properties, '$.replica') as "replica",
JSON_EXTRACT(properties, '$.infrastructureVersion') as "infrastructure_version",
subscriptionId,
resourceGroupName,
mongoClusterName
FROM azure_isv.mongo_db.mongo_clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.createMode') as "create_mode",
json_extract_path_text(properties, '$.restoreParameters') as "restore_parameters",
json_extract_path_text(properties, '$.replicaParameters') as "replica_parameters",
json_extract_path_text(properties, '$.administrator') as "administrator",
json_extract_path_text(properties, '$.serverVersion') as "server_version",
json_extract_path_text(properties, '$.connectionString') as "connection_string",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.clusterStatus') as "cluster_status",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.highAvailability') as "high_availability",
json_extract_path_text(properties, '$.storage') as "storage",
json_extract_path_text(properties, '$.sharding') as "sharding",
json_extract_path_text(properties, '$.compute') as "compute",
json_extract_path_text(properties, '$.backup') as "backup",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.previewFeatures') as "preview_features",
json_extract_path_text(properties, '$.replica') as "replica",
json_extract_path_text(properties, '$.infrastructureVersion') as "infrastructure_version",
subscriptionId,
resourceGroupName,
mongoClusterName
FROM azure_isv.mongo_db.mongo_clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
