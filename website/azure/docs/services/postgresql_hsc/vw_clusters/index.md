--- 
title: vw_clusters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_clusters
  - postgresql_hsc
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

Creates, updates, deletes, gets or lists a <code>vw_clusters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_clusters</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.postgresql_hsc.vw_clusters" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.aadAuthEnabled') as "aad_auth_enabled",
JSON_EXTRACT(properties, '$.administratorLogin') as "administrator_login",
JSON_EXTRACT(properties, '$.administratorLoginPassword') as "administrator_login_password",
JSON_EXTRACT(properties, '$.dataEncryption') as "data_encryption",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.postgresqlVersion') as "postgresql_version",
JSON_EXTRACT(properties, '$.citusVersion') as "citus_version",
JSON_EXTRACT(properties, '$.maintenanceWindow') as "maintenance_window",
JSON_EXTRACT(properties, '$.preferredPrimaryZone') as "preferred_primary_zone",
JSON_EXTRACT(properties, '$.enableShardsOnCoordinator') as "enable_shards_on_coordinator",
JSON_EXTRACT(properties, '$.enableHa') as "enable_ha",
JSON_EXTRACT(properties, '$.coordinatorServerEdition') as "coordinator_server_edition",
JSON_EXTRACT(properties, '$.coordinatorStorageQuotaInMb') as "coordinator_storage_quota_in_mb",
JSON_EXTRACT(properties, '$.coordinatorVCores') as "coordinator_vcores",
JSON_EXTRACT(properties, '$.coordinatorEnablePublicIpAccess') as "coordinator_enable_public_ip_access",
JSON_EXTRACT(properties, '$.nodeServerEdition') as "node_server_edition",
JSON_EXTRACT(properties, '$.nodeCount') as "node_count",
JSON_EXTRACT(properties, '$.nodeStorageQuotaInMb') as "node_storage_quota_in_mb",
JSON_EXTRACT(properties, '$.nodeVCores') as "node_vcores",
JSON_EXTRACT(properties, '$.nodeEnablePublicIpAccess') as "node_enable_public_ip_access",
JSON_EXTRACT(properties, '$.serverNames') as "server_names",
JSON_EXTRACT(properties, '$.sourceResourceId') as "source_resource_id",
JSON_EXTRACT(properties, '$.sourceLocation') as "source_location",
JSON_EXTRACT(properties, '$.passwordEnabled') as "password_enabled",
JSON_EXTRACT(properties, '$.pointInTimeUTC') as "point_in_time_utc",
JSON_EXTRACT(properties, '$.readReplicas') as "read_replicas",
JSON_EXTRACT(properties, '$.earliestRestoreTime') as "earliest_restore_time",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.databaseName') as "database_name",
JSON_EXTRACT(properties, '$.enableGeoBackup') as "enable_geo_backup",
JSON_EXTRACT(properties, '$.authConfig') as "auth_config",
subscriptionId,
resourceGroupName,
clusterName
FROM azure.postgresql_hsc.clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.aadAuthEnabled') as "aad_auth_enabled",
json_extract_path_text(properties, '$.administratorLogin') as "administrator_login",
json_extract_path_text(properties, '$.administratorLoginPassword') as "administrator_login_password",
json_extract_path_text(properties, '$.dataEncryption') as "data_encryption",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.postgresqlVersion') as "postgresql_version",
json_extract_path_text(properties, '$.citusVersion') as "citus_version",
json_extract_path_text(properties, '$.maintenanceWindow') as "maintenance_window",
json_extract_path_text(properties, '$.preferredPrimaryZone') as "preferred_primary_zone",
json_extract_path_text(properties, '$.enableShardsOnCoordinator') as "enable_shards_on_coordinator",
json_extract_path_text(properties, '$.enableHa') as "enable_ha",
json_extract_path_text(properties, '$.coordinatorServerEdition') as "coordinator_server_edition",
json_extract_path_text(properties, '$.coordinatorStorageQuotaInMb') as "coordinator_storage_quota_in_mb",
json_extract_path_text(properties, '$.coordinatorVCores') as "coordinator_vcores",
json_extract_path_text(properties, '$.coordinatorEnablePublicIpAccess') as "coordinator_enable_public_ip_access",
json_extract_path_text(properties, '$.nodeServerEdition') as "node_server_edition",
json_extract_path_text(properties, '$.nodeCount') as "node_count",
json_extract_path_text(properties, '$.nodeStorageQuotaInMb') as "node_storage_quota_in_mb",
json_extract_path_text(properties, '$.nodeVCores') as "node_vcores",
json_extract_path_text(properties, '$.nodeEnablePublicIpAccess') as "node_enable_public_ip_access",
json_extract_path_text(properties, '$.serverNames') as "server_names",
json_extract_path_text(properties, '$.sourceResourceId') as "source_resource_id",
json_extract_path_text(properties, '$.sourceLocation') as "source_location",
json_extract_path_text(properties, '$.passwordEnabled') as "password_enabled",
json_extract_path_text(properties, '$.pointInTimeUTC') as "point_in_time_utc",
json_extract_path_text(properties, '$.readReplicas') as "read_replicas",
json_extract_path_text(properties, '$.earliestRestoreTime') as "earliest_restore_time",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.databaseName') as "database_name",
json_extract_path_text(properties, '$.enableGeoBackup') as "enable_geo_backup",
json_extract_path_text(properties, '$.authConfig') as "auth_config",
subscriptionId,
resourceGroupName,
clusterName
FROM azure.postgresql_hsc.clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
