--- 
title: vw_dedicated_cloud_nodes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_dedicated_cloud_nodes
  - vmware_cloud_simple
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

Creates, updates, deletes, gets or lists a <code>vw_dedicated_cloud_nodes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_dedicated_cloud_nodes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.vmware_cloud_simple.vw_dedicated_cloud_nodes" /></td></tr>
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
location as location,
sku as sku,
tags as tags,
type as type,
JSON_EXTRACT(properties, '$.availabilityZoneId') as "availability_zone_id",
JSON_EXTRACT(properties, '$.availabilityZoneName') as "availability_zone_name",
JSON_EXTRACT(properties, '$.cloudRackName') as "cloud_rack_name",
JSON_EXTRACT(properties, '$.created') as "created",
JSON_EXTRACT(properties, '$.nodesCount') as "nodes_count",
JSON_EXTRACT(properties, '$.placementGroupId') as "placement_group_id",
JSON_EXTRACT(properties, '$.placementGroupName') as "placement_group_name",
JSON_EXTRACT(properties, '$.privateCloudId') as "private_cloud_id",
JSON_EXTRACT(properties, '$.privateCloudName') as "private_cloud_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.purchaseId') as "purchase_id",
JSON_EXTRACT(properties, '$.skuDescription') as "sku_description",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.vmwareClusterName') as "vmware_cluster_name",
subscriptionId,
resourceGroupName,
dedicatedCloudNodeName
FROM azure_isv.vmware_cloud_simple.dedicated_cloud_nodes
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
sku as sku,
tags as tags,
type as type,
json_extract_path_text(properties, '$.availabilityZoneId') as "availability_zone_id",
json_extract_path_text(properties, '$.availabilityZoneName') as "availability_zone_name",
json_extract_path_text(properties, '$.cloudRackName') as "cloud_rack_name",
json_extract_path_text(properties, '$.created') as "created",
json_extract_path_text(properties, '$.nodesCount') as "nodes_count",
json_extract_path_text(properties, '$.placementGroupId') as "placement_group_id",
json_extract_path_text(properties, '$.placementGroupName') as "placement_group_name",
json_extract_path_text(properties, '$.privateCloudId') as "private_cloud_id",
json_extract_path_text(properties, '$.privateCloudName') as "private_cloud_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.purchaseId') as "purchase_id",
json_extract_path_text(properties, '$.skuDescription') as "sku_description",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.vmwareClusterName') as "vmware_cluster_name",
subscriptionId,
resourceGroupName,
dedicatedCloudNodeName
FROM azure_isv.vmware_cloud_simple.dedicated_cloud_nodes
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
