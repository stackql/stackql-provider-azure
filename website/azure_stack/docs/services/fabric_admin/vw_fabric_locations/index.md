--- 
title: vw_fabric_locations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_fabric_locations
  - fabric_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_fabric_locations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_fabric_locations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.fabric_admin.vw_fabric_locations" /></td></tr>
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
JSON_EXTRACT(properties, '$.pepIpAddresses') as "pep_ip_addresses",
JSON_EXTRACT(properties, '$.timeServer') as "time_server",
JSON_EXTRACT(properties, '$.stampInformationId') as "stamp_information_id",
JSON_EXTRACT(properties, '$.stampCloudId') as "stamp_cloud_id",
JSON_EXTRACT(properties, '$.externalDNSIPAddress01') as "external_dnsip_address01",
JSON_EXTRACT(properties, '$.externalDNSIPAddress02') as "external_dnsip_address02",
JSON_EXTRACT(properties, '$.exclusiveAdminOperationRunning') as "exclusive_admin_operation_running",
JSON_EXTRACT(properties, '$.exclusiveAdminOperationName') as "exclusive_admin_operation_name",
JSON_EXTRACT(properties, '$.startUpActionPlanStartTime') as "start_up_action_plan_start_time",
JSON_EXTRACT(properties, '$.startUpActionPlanEndTime') as "start_up_action_plan_end_time",
JSON_EXTRACT(properties, '$.shutDownActionPlanStartTime') as "shut_down_action_plan_start_time",
JSON_EXTRACT(properties, '$.shutDownActionPlanEndTime') as "shut_down_action_plan_end_time",
JSON_EXTRACT(properties, '$.dataGeoLocation') as "data_geo_location",
subscriptionId,
resourceGroupName,
fabricLocation
FROM azure_stack.fabric_admin.fabric_locations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.pepIpAddresses') as "pep_ip_addresses",
json_extract_path_text(properties, '$.timeServer') as "time_server",
json_extract_path_text(properties, '$.stampInformationId') as "stamp_information_id",
json_extract_path_text(properties, '$.stampCloudId') as "stamp_cloud_id",
json_extract_path_text(properties, '$.externalDNSIPAddress01') as "external_dnsip_address01",
json_extract_path_text(properties, '$.externalDNSIPAddress02') as "external_dnsip_address02",
json_extract_path_text(properties, '$.exclusiveAdminOperationRunning') as "exclusive_admin_operation_running",
json_extract_path_text(properties, '$.exclusiveAdminOperationName') as "exclusive_admin_operation_name",
json_extract_path_text(properties, '$.startUpActionPlanStartTime') as "start_up_action_plan_start_time",
json_extract_path_text(properties, '$.startUpActionPlanEndTime') as "start_up_action_plan_end_time",
json_extract_path_text(properties, '$.shutDownActionPlanStartTime') as "shut_down_action_plan_start_time",
json_extract_path_text(properties, '$.shutDownActionPlanEndTime') as "shut_down_action_plan_end_time",
json_extract_path_text(properties, '$.dataGeoLocation') as "data_geo_location",
subscriptionId,
resourceGroupName,
fabricLocation
FROM azure_stack.fabric_admin.fabric_locations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me';
```

</TabItem>
</Tabs>
