--- 
title: vw_elastic_sans
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_elastic_sans
  - elastic_san
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

Creates, updates, deletes, gets or lists a <code>vw_elastic_sans</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_elastic_sans</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.elastic_san.vw_elastic_sans" /></td></tr>
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
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.availabilityZones') as "availability_zones",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.baseSizeTiB') as "base_size_tib",
JSON_EXTRACT(properties, '$.extendedCapacitySizeTiB') as "extended_capacity_size_tib",
JSON_EXTRACT(properties, '$.totalVolumeSizeGiB') as "total_volume_size_gib",
JSON_EXTRACT(properties, '$.volumeGroupCount') as "volume_group_count",
JSON_EXTRACT(properties, '$.totalIops') as "total_iops",
JSON_EXTRACT(properties, '$.totalMBps') as "total_mbps",
JSON_EXTRACT(properties, '$.totalSizeTiB') as "total_size_tib",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
subscriptionId,
resourceGroupName,
elasticSanName
FROM azure.elastic_san.elastic_sans
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.availabilityZones') as "availability_zones",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.baseSizeTiB') as "base_size_tib",
json_extract_path_text(properties, '$.extendedCapacitySizeTiB') as "extended_capacity_size_tib",
json_extract_path_text(properties, '$.totalVolumeSizeGiB') as "total_volume_size_gib",
json_extract_path_text(properties, '$.volumeGroupCount') as "volume_group_count",
json_extract_path_text(properties, '$.totalIops') as "total_iops",
json_extract_path_text(properties, '$.totalMBps') as "total_mbps",
json_extract_path_text(properties, '$.totalSizeTiB') as "total_size_tib",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
subscriptionId,
resourceGroupName,
elasticSanName
FROM azure.elastic_san.elastic_sans
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
