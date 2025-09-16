--- 
title: vw_provisioned_cluster_instances_upgrade_profiles
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_provisioned_cluster_instances_upgrade_profiles
  - hybrid_aks
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

Creates, updates, deletes, gets or lists a <code>vw_provisioned_cluster_instances_upgrade_profiles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_provisioned_cluster_instances_upgrade_profiles</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_aks.vw_provisioned_cluster_instances_upgrade_profiles" /></td></tr>
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
JSON_EXTRACT(properties, '$.controlPlaneProfile') as "control_plane_profile",
connectedClusterResourceUri
FROM azure.hybrid_aks.provisioned_cluster_instances_upgrade_profiles
WHERE connectedClusterResourceUri = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.controlPlaneProfile') as "control_plane_profile",
connectedClusterResourceUri
FROM azure.hybrid_aks.provisioned_cluster_instances_upgrade_profiles
WHERE connectedClusterResourceUri = 'replace-me';
```

</TabItem>
</Tabs>
