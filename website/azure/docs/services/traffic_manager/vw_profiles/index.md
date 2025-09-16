--- 
title: vw_profiles
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_profiles
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

Creates, updates, deletes, gets or lists a <code>vw_profiles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_profiles</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.traffic_manager.vw_profiles" /></td></tr>
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
JSON_EXTRACT(properties, '$.profileStatus') as "profile_status",
JSON_EXTRACT(properties, '$.trafficRoutingMethod') as "traffic_routing_method",
JSON_EXTRACT(properties, '$.dnsConfig') as "dns_config",
JSON_EXTRACT(properties, '$.monitorConfig') as "monitor_config",
JSON_EXTRACT(properties, '$.endpoints') as "endpoints",
JSON_EXTRACT(properties, '$.trafficViewEnrollmentStatus') as "traffic_view_enrollment_status",
JSON_EXTRACT(properties, '$.allowedEndpointRecordTypes') as "allowed_endpoint_record_types",
JSON_EXTRACT(properties, '$.maxReturn') as "max_return",
subscriptionId,
resourceGroupName,
profileName
FROM azure.traffic_manager.profiles
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.profileStatus') as "profile_status",
json_extract_path_text(properties, '$.trafficRoutingMethod') as "traffic_routing_method",
json_extract_path_text(properties, '$.dnsConfig') as "dns_config",
json_extract_path_text(properties, '$.monitorConfig') as "monitor_config",
json_extract_path_text(properties, '$.endpoints') as "endpoints",
json_extract_path_text(properties, '$.trafficViewEnrollmentStatus') as "traffic_view_enrollment_status",
json_extract_path_text(properties, '$.allowedEndpointRecordTypes') as "allowed_endpoint_record_types",
json_extract_path_text(properties, '$.maxReturn') as "max_return",
subscriptionId,
resourceGroupName,
profileName
FROM azure.traffic_manager.profiles
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
