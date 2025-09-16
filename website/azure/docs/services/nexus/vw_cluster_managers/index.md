--- 
title: vw_cluster_managers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_cluster_managers
  - nexus
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

Creates, updates, deletes, gets or lists a <code>vw_cluster_managers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_cluster_managers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.nexus.vw_cluster_managers" /></td></tr>
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
JSON_EXTRACT(properties, '$.analyticsWorkspaceId') as "analytics_workspace_id",
JSON_EXTRACT(properties, '$.availabilityZones') as "availability_zones",
JSON_EXTRACT(properties, '$.clusterVersions') as "cluster_versions",
JSON_EXTRACT(properties, '$.detailedStatus') as "detailed_status",
JSON_EXTRACT(properties, '$.detailedStatusMessage') as "detailed_status_message",
JSON_EXTRACT(properties, '$.fabricControllerId') as "fabric_controller_id",
JSON_EXTRACT(properties, '$.managedResourceGroupConfiguration') as "managed_resource_group_configuration",
JSON_EXTRACT(properties, '$.managerExtendedLocation') as "manager_extended_location",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.vmSize') as "vm_size",
subscriptionId,
resourceGroupName,
clusterManagerName
FROM azure.nexus.cluster_managers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.analyticsWorkspaceId') as "analytics_workspace_id",
json_extract_path_text(properties, '$.availabilityZones') as "availability_zones",
json_extract_path_text(properties, '$.clusterVersions') as "cluster_versions",
json_extract_path_text(properties, '$.detailedStatus') as "detailed_status",
json_extract_path_text(properties, '$.detailedStatusMessage') as "detailed_status_message",
json_extract_path_text(properties, '$.fabricControllerId') as "fabric_controller_id",
json_extract_path_text(properties, '$.managedResourceGroupConfiguration') as "managed_resource_group_configuration",
json_extract_path_text(properties, '$.managerExtendedLocation') as "manager_extended_location",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.vmSize') as "vm_size",
subscriptionId,
resourceGroupName,
clusterManagerName
FROM azure.nexus.cluster_managers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
