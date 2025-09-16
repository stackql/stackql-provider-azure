--- 
title: vw_servers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_servers
  - maria_db
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

Creates, updates, deletes, gets or lists a <code>vw_servers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_servers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.maria_db.vw_servers" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.administratorLogin') as "administrator_login",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.sslEnforcement') as "ssl_enforcement",
JSON_EXTRACT(properties, '$.minimalTlsVersion') as "minimal_tls_version",
JSON_EXTRACT(properties, '$.userVisibleState') as "user_visible_state",
JSON_EXTRACT(properties, '$.fullyQualifiedDomainName') as "fully_qualified_domain_name",
JSON_EXTRACT(properties, '$.earliestRestoreDate') as "earliest_restore_date",
JSON_EXTRACT(properties, '$.storageProfile') as "storage_profile",
JSON_EXTRACT(properties, '$.replicationRole') as "replication_role",
JSON_EXTRACT(properties, '$.masterServerId') as "master_server_id",
JSON_EXTRACT(properties, '$.replicaCapacity') as "replica_capacity",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
subscriptionId,
resourceGroupName,
serverName
FROM azure.maria_db.servers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
sku as sku,
tags as tags,
json_extract_path_text(properties, '$.administratorLogin') as "administrator_login",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.sslEnforcement') as "ssl_enforcement",
json_extract_path_text(properties, '$.minimalTlsVersion') as "minimal_tls_version",
json_extract_path_text(properties, '$.userVisibleState') as "user_visible_state",
json_extract_path_text(properties, '$.fullyQualifiedDomainName') as "fully_qualified_domain_name",
json_extract_path_text(properties, '$.earliestRestoreDate') as "earliest_restore_date",
json_extract_path_text(properties, '$.storageProfile') as "storage_profile",
json_extract_path_text(properties, '$.replicationRole') as "replication_role",
json_extract_path_text(properties, '$.masterServerId') as "master_server_id",
json_extract_path_text(properties, '$.replicaCapacity') as "replica_capacity",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
subscriptionId,
resourceGroupName,
serverName
FROM azure.maria_db.servers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
