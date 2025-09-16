--- 
title: vw_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_endpoints
  - traffic_manager
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

Creates, updates, deletes, gets or lists a <code>vw_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.traffic_manager.vw_endpoints" /></td></tr>
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
JSON_EXTRACT(properties, '$.targetResourceId') as "target_resource_id",
JSON_EXTRACT(properties, '$.target') as "target",
JSON_EXTRACT(properties, '$.endpointStatus') as "endpoint_status",
JSON_EXTRACT(properties, '$.weight') as "weight",
JSON_EXTRACT(properties, '$.priority') as "priority",
JSON_EXTRACT(properties, '$.endpointLocation') as "endpoint_location",
JSON_EXTRACT(properties, '$.endpointMonitorStatus') as "endpoint_monitor_status",
JSON_EXTRACT(properties, '$.minChildEndpoints') as "min_child_endpoints",
JSON_EXTRACT(properties, '$.minChildEndpointsIPv4') as "min_child_endpoints_ipv4",
JSON_EXTRACT(properties, '$.minChildEndpointsIPv6') as "min_child_endpoints_ipv6",
JSON_EXTRACT(properties, '$.geoMapping') as "geo_mapping",
JSON_EXTRACT(properties, '$.subnets') as "subnets",
JSON_EXTRACT(properties, '$.customHeaders') as "custom_headers",
JSON_EXTRACT(properties, '$.alwaysServe') as "always_serve",
subscriptionId,
resourceGroupName,
profileName,
endpointType,
endpointName
FROM azure.traffic_manager.endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me' AND endpointType = 'replace-me' AND endpointName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.targetResourceId') as "target_resource_id",
json_extract_path_text(properties, '$.target') as "target",
json_extract_path_text(properties, '$.endpointStatus') as "endpoint_status",
json_extract_path_text(properties, '$.weight') as "weight",
json_extract_path_text(properties, '$.priority') as "priority",
json_extract_path_text(properties, '$.endpointLocation') as "endpoint_location",
json_extract_path_text(properties, '$.endpointMonitorStatus') as "endpoint_monitor_status",
json_extract_path_text(properties, '$.minChildEndpoints') as "min_child_endpoints",
json_extract_path_text(properties, '$.minChildEndpointsIPv4') as "min_child_endpoints_ipv4",
json_extract_path_text(properties, '$.minChildEndpointsIPv6') as "min_child_endpoints_ipv6",
json_extract_path_text(properties, '$.geoMapping') as "geo_mapping",
json_extract_path_text(properties, '$.subnets') as "subnets",
json_extract_path_text(properties, '$.customHeaders') as "custom_headers",
json_extract_path_text(properties, '$.alwaysServe') as "always_serve",
subscriptionId,
resourceGroupName,
profileName,
endpointType,
endpointName
FROM azure.traffic_manager.endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me' AND endpointType = 'replace-me' AND endpointName = 'replace-me';
```

</TabItem>
</Tabs>
