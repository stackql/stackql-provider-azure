--- 
title: vw_servers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_servers
  - mysql
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mysql.vw_servers" /></td></tr>
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
identity as identity,
sku as sku,
tags as tags,
JSON_EXTRACT(properties, '$.administratorLogin') as "administrator_login",
JSON_EXTRACT(properties, '$.administratorLoginPassword') as "administrator_login_password",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.availabilityZone') as "availability_zone",
JSON_EXTRACT(properties, '$.createMode') as "create_mode",
JSON_EXTRACT(properties, '$.sourceServerResourceId') as "source_server_resource_id",
JSON_EXTRACT(properties, '$.restorePointInTime') as "restore_point_in_time",
JSON_EXTRACT(properties, '$.replicationRole') as "replication_role",
JSON_EXTRACT(properties, '$.replicaCapacity') as "replica_capacity",
JSON_EXTRACT(properties, '$.dataEncryption') as "data_encryption",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.fullyQualifiedDomainName') as "fully_qualified_domain_name",
JSON_EXTRACT(properties, '$.databasePort') as "database_port",
JSON_EXTRACT(properties, '$.storage') as "storage",
JSON_EXTRACT(properties, '$.backup') as "backup",
JSON_EXTRACT(properties, '$.highAvailability') as "high_availability",
JSON_EXTRACT(properties, '$.network') as "network",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.maintenancePolicy') as "maintenance_policy",
JSON_EXTRACT(properties, '$.maintenanceWindow') as "maintenance_window",
JSON_EXTRACT(properties, '$.importSourceProperties') as "import_source_properties",
subscriptionId,
resourceGroupName,
serverName
FROM azure.mysql.servers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
sku as sku,
tags as tags,
json_extract_path_text(properties, '$.administratorLogin') as "administrator_login",
json_extract_path_text(properties, '$.administratorLoginPassword') as "administrator_login_password",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.availabilityZone') as "availability_zone",
json_extract_path_text(properties, '$.createMode') as "create_mode",
json_extract_path_text(properties, '$.sourceServerResourceId') as "source_server_resource_id",
json_extract_path_text(properties, '$.restorePointInTime') as "restore_point_in_time",
json_extract_path_text(properties, '$.replicationRole') as "replication_role",
json_extract_path_text(properties, '$.replicaCapacity') as "replica_capacity",
json_extract_path_text(properties, '$.dataEncryption') as "data_encryption",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.fullyQualifiedDomainName') as "fully_qualified_domain_name",
json_extract_path_text(properties, '$.databasePort') as "database_port",
json_extract_path_text(properties, '$.storage') as "storage",
json_extract_path_text(properties, '$.backup') as "backup",
json_extract_path_text(properties, '$.highAvailability') as "high_availability",
json_extract_path_text(properties, '$.network') as "network",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.maintenancePolicy') as "maintenance_policy",
json_extract_path_text(properties, '$.maintenanceWindow') as "maintenance_window",
json_extract_path_text(properties, '$.importSourceProperties') as "import_source_properties",
subscriptionId,
resourceGroupName,
serverName
FROM azure.mysql.servers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
