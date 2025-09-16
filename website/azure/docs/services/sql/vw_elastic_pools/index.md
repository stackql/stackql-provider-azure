--- 
title: vw_elastic_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_elastic_pools
  - sql
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

Creates, updates, deletes, gets or lists a <code>vw_elastic_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_elastic_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_elastic_pools" /></td></tr>
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
kind as kind,
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.creationDate') as "creation_date",
JSON_EXTRACT(properties, '$.maxSizeBytes') as "max_size_bytes",
JSON_EXTRACT(properties, '$.minCapacity') as "min_capacity",
JSON_EXTRACT(properties, '$.perDatabaseSettings') as "per_database_settings",
JSON_EXTRACT(properties, '$.zoneRedundant') as "zone_redundant",
JSON_EXTRACT(properties, '$.licenseType') as "license_type",
JSON_EXTRACT(properties, '$.maintenanceConfigurationId') as "maintenance_configuration_id",
JSON_EXTRACT(properties, '$.highAvailabilityReplicaCount') as "high_availability_replica_count",
JSON_EXTRACT(properties, '$.preferredEnclaveType') as "preferred_enclave_type",
JSON_EXTRACT(properties, '$.availabilityZone') as "availability_zone",
subscriptionId,
resourceGroupName,
serverName,
elasticPoolName
FROM azure.sql.elastic_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
sku as sku,
kind as kind,
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.creationDate') as "creation_date",
json_extract_path_text(properties, '$.maxSizeBytes') as "max_size_bytes",
json_extract_path_text(properties, '$.minCapacity') as "min_capacity",
json_extract_path_text(properties, '$.perDatabaseSettings') as "per_database_settings",
json_extract_path_text(properties, '$.zoneRedundant') as "zone_redundant",
json_extract_path_text(properties, '$.licenseType') as "license_type",
json_extract_path_text(properties, '$.maintenanceConfigurationId') as "maintenance_configuration_id",
json_extract_path_text(properties, '$.highAvailabilityReplicaCount') as "high_availability_replica_count",
json_extract_path_text(properties, '$.preferredEnclaveType') as "preferred_enclave_type",
json_extract_path_text(properties, '$.availabilityZone') as "availability_zone",
subscriptionId,
resourceGroupName,
serverName,
elasticPoolName
FROM azure.sql.elastic_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
</Tabs>
