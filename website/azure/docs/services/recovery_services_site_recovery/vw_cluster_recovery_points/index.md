--- 
title: vw_cluster_recovery_points
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_cluster_recovery_points
  - recovery_services_site_recovery
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

Creates, updates, deletes, gets or lists a <code>vw_cluster_recovery_points</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_cluster_recovery_points</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.vw_cluster_recovery_points" /></td></tr>
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
id as id,
name as name,
type as type,
JSON_EXTRACT(properties, '$.recoveryPointTime') as "recovery_point_time",
JSON_EXTRACT(properties, '$.recoveryPointType') as "recovery_point_type",
JSON_EXTRACT(properties, '$.providerSpecificDetails') as "provider_specific_details",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
protectionContainerName,
replicationProtectionClusterName,
recoveryPointName
FROM azure.recovery_services_site_recovery.cluster_recovery_points
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me' AND fabricName = 'replace-me' AND protectionContainerName = 'replace-me' AND replicationProtectionClusterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.recoveryPointTime') as "recovery_point_time",
json_extract_path_text(properties, '$.recoveryPointType') as "recovery_point_type",
json_extract_path_text(properties, '$.providerSpecificDetails') as "provider_specific_details",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
protectionContainerName,
replicationProtectionClusterName,
recoveryPointName
FROM azure.recovery_services_site_recovery.cluster_recovery_points
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me' AND fabricName = 'replace-me' AND protectionContainerName = 'replace-me' AND replicationProtectionClusterName = 'replace-me';
```

</TabItem>
</Tabs>
