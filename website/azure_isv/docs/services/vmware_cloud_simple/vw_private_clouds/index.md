--- 
title: vw_private_clouds
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_private_clouds
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

Creates, updates, deletes, gets or lists a <code>vw_private_clouds</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_private_clouds</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.vmware_cloud_simple.vw_private_clouds" /></td></tr>
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
type as type,
JSON_EXTRACT(properties, '$.availabilityZoneId') as "availability_zone_id",
JSON_EXTRACT(properties, '$.availabilityZoneName') as "availability_zone_name",
JSON_EXTRACT(properties, '$.clustersNumber') as "clusters_number",
JSON_EXTRACT(properties, '$.createdBy') as "created_by",
JSON_EXTRACT(properties, '$.createdOn') as "created_on",
JSON_EXTRACT(properties, '$.dnsServers') as "dns_servers",
JSON_EXTRACT(properties, '$.expires') as "expires",
JSON_EXTRACT(properties, '$.nsxType') as "nsx_type",
JSON_EXTRACT(properties, '$.placementGroupId') as "placement_group_id",
JSON_EXTRACT(properties, '$.placementGroupName') as "placement_group_name",
JSON_EXTRACT(properties, '$.privateCloudId') as "private_cloud_id",
JSON_EXTRACT(properties, '$.resourcePools') as "resource_pools",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.totalCpuCores') as "total_cpu_cores",
JSON_EXTRACT(properties, '$.totalNodes') as "total_nodes",
JSON_EXTRACT(properties, '$.totalRam') as "total_ram",
JSON_EXTRACT(properties, '$.totalStorage') as "total_storage",
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.vSphereVersion') as "v_sphere_version",
JSON_EXTRACT(properties, '$.vcenterFqdn') as "vcenter_fqdn",
JSON_EXTRACT(properties, '$.vcenterRefid') as "vcenter_refid",
JSON_EXTRACT(properties, '$.virtualMachineTemplates') as "virtual_machine_templates",
JSON_EXTRACT(properties, '$.virtualNetworks') as "virtual_networks",
JSON_EXTRACT(properties, '$.vrOpsEnabled') as "vr_ops_enabled",
subscriptionId,
regionId,
pcName
FROM azure_isv.vmware_cloud_simple.private_clouds
WHERE subscriptionId = 'replace-me' AND regionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
json_extract_path_text(properties, '$.availabilityZoneId') as "availability_zone_id",
json_extract_path_text(properties, '$.availabilityZoneName') as "availability_zone_name",
json_extract_path_text(properties, '$.clustersNumber') as "clusters_number",
json_extract_path_text(properties, '$.createdBy') as "created_by",
json_extract_path_text(properties, '$.createdOn') as "created_on",
json_extract_path_text(properties, '$.dnsServers') as "dns_servers",
json_extract_path_text(properties, '$.expires') as "expires",
json_extract_path_text(properties, '$.nsxType') as "nsx_type",
json_extract_path_text(properties, '$.placementGroupId') as "placement_group_id",
json_extract_path_text(properties, '$.placementGroupName') as "placement_group_name",
json_extract_path_text(properties, '$.privateCloudId') as "private_cloud_id",
json_extract_path_text(properties, '$.resourcePools') as "resource_pools",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.totalCpuCores') as "total_cpu_cores",
json_extract_path_text(properties, '$.totalNodes') as "total_nodes",
json_extract_path_text(properties, '$.totalRam') as "total_ram",
json_extract_path_text(properties, '$.totalStorage') as "total_storage",
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.vSphereVersion') as "v_sphere_version",
json_extract_path_text(properties, '$.vcenterFqdn') as "vcenter_fqdn",
json_extract_path_text(properties, '$.vcenterRefid') as "vcenter_refid",
json_extract_path_text(properties, '$.virtualMachineTemplates') as "virtual_machine_templates",
json_extract_path_text(properties, '$.virtualNetworks') as "virtual_networks",
json_extract_path_text(properties, '$.vrOpsEnabled') as "vr_ops_enabled",
subscriptionId,
regionId,
pcName
FROM azure_isv.vmware_cloud_simple.private_clouds
WHERE subscriptionId = 'replace-me' AND regionId = 'replace-me';
```

</TabItem>
</Tabs>
