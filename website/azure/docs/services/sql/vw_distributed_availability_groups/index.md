--- 
title: vw_distributed_availability_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_distributed_availability_groups
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

Creates, updates, deletes, gets or lists a <code>vw_distributed_availability_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_distributed_availability_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_distributed_availability_groups" /></td></tr>
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
JSON_EXTRACT(properties, '$.targetDatabase') as "target_database",
JSON_EXTRACT(properties, '$.sourceEndpoint') as "source_endpoint",
JSON_EXTRACT(properties, '$.primaryAvailabilityGroupName') as "primary_availability_group_name",
JSON_EXTRACT(properties, '$.secondaryAvailabilityGroupName') as "secondary_availability_group_name",
JSON_EXTRACT(properties, '$.replicationMode') as "replication_mode",
JSON_EXTRACT(properties, '$.distributedAvailabilityGroupId') as "distributed_availability_group_id",
JSON_EXTRACT(properties, '$.sourceReplicaId') as "source_replica_id",
JSON_EXTRACT(properties, '$.targetReplicaId') as "target_replica_id",
JSON_EXTRACT(properties, '$.linkState') as "link_state",
JSON_EXTRACT(properties, '$.lastHardenedLsn') as "last_hardened_lsn",
subscriptionId,
resourceGroupName,
managedInstanceName,
distributedAvailabilityGroupName
FROM azure.sql.distributed_availability_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedInstanceName = 'replace-me' AND distributedAvailabilityGroupName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.targetDatabase') as "target_database",
json_extract_path_text(properties, '$.sourceEndpoint') as "source_endpoint",
json_extract_path_text(properties, '$.primaryAvailabilityGroupName') as "primary_availability_group_name",
json_extract_path_text(properties, '$.secondaryAvailabilityGroupName') as "secondary_availability_group_name",
json_extract_path_text(properties, '$.replicationMode') as "replication_mode",
json_extract_path_text(properties, '$.distributedAvailabilityGroupId') as "distributed_availability_group_id",
json_extract_path_text(properties, '$.sourceReplicaId') as "source_replica_id",
json_extract_path_text(properties, '$.targetReplicaId') as "target_replica_id",
json_extract_path_text(properties, '$.linkState') as "link_state",
json_extract_path_text(properties, '$.lastHardenedLsn') as "last_hardened_lsn",
subscriptionId,
resourceGroupName,
managedInstanceName,
distributedAvailabilityGroupName
FROM azure.sql.distributed_availability_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedInstanceName = 'replace-me' AND distributedAvailabilityGroupName = 'replace-me';
```

</TabItem>
</Tabs>
