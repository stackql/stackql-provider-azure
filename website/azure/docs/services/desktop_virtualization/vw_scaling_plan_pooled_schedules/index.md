--- 
title: vw_scaling_plan_pooled_schedules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_scaling_plan_pooled_schedules
  - desktop_virtualization
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

Creates, updates, deletes, gets or lists a <code>vw_scaling_plan_pooled_schedules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_scaling_plan_pooled_schedules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.desktop_virtualization.vw_scaling_plan_pooled_schedules" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.daysOfWeek') as "days_of_week",
JSON_EXTRACT(properties, '$.rampUpStartTime') as "ramp_up_start_time",
JSON_EXTRACT(properties, '$.rampUpLoadBalancingAlgorithm') as "ramp_up_load_balancing_algorithm",
JSON_EXTRACT(properties, '$.rampUpMinimumHostsPct') as "ramp_up_minimum_hosts_pct",
JSON_EXTRACT(properties, '$.rampUpCapacityThresholdPct') as "ramp_up_capacity_threshold_pct",
JSON_EXTRACT(properties, '$.peakStartTime') as "peak_start_time",
JSON_EXTRACT(properties, '$.peakLoadBalancingAlgorithm') as "peak_load_balancing_algorithm",
JSON_EXTRACT(properties, '$.rampDownStartTime') as "ramp_down_start_time",
JSON_EXTRACT(properties, '$.rampDownLoadBalancingAlgorithm') as "ramp_down_load_balancing_algorithm",
JSON_EXTRACT(properties, '$.rampDownMinimumHostsPct') as "ramp_down_minimum_hosts_pct",
JSON_EXTRACT(properties, '$.rampDownCapacityThresholdPct') as "ramp_down_capacity_threshold_pct",
JSON_EXTRACT(properties, '$.rampDownForceLogoffUsers') as "ramp_down_force_logoff_users",
JSON_EXTRACT(properties, '$.rampDownStopHostsWhen') as "ramp_down_stop_hosts_when",
JSON_EXTRACT(properties, '$.rampDownWaitTimeMinutes') as "ramp_down_wait_time_minutes",
JSON_EXTRACT(properties, '$.rampDownNotificationMessage') as "ramp_down_notification_message",
JSON_EXTRACT(properties, '$.offPeakStartTime') as "off_peak_start_time",
JSON_EXTRACT(properties, '$.offPeakLoadBalancingAlgorithm') as "off_peak_load_balancing_algorithm",
subscriptionId,
resourceGroupName,
scalingPlanName,
scalingPlanScheduleName
FROM azure.desktop_virtualization.scaling_plan_pooled_schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND scalingPlanName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.daysOfWeek') as "days_of_week",
json_extract_path_text(properties, '$.rampUpStartTime') as "ramp_up_start_time",
json_extract_path_text(properties, '$.rampUpLoadBalancingAlgorithm') as "ramp_up_load_balancing_algorithm",
json_extract_path_text(properties, '$.rampUpMinimumHostsPct') as "ramp_up_minimum_hosts_pct",
json_extract_path_text(properties, '$.rampUpCapacityThresholdPct') as "ramp_up_capacity_threshold_pct",
json_extract_path_text(properties, '$.peakStartTime') as "peak_start_time",
json_extract_path_text(properties, '$.peakLoadBalancingAlgorithm') as "peak_load_balancing_algorithm",
json_extract_path_text(properties, '$.rampDownStartTime') as "ramp_down_start_time",
json_extract_path_text(properties, '$.rampDownLoadBalancingAlgorithm') as "ramp_down_load_balancing_algorithm",
json_extract_path_text(properties, '$.rampDownMinimumHostsPct') as "ramp_down_minimum_hosts_pct",
json_extract_path_text(properties, '$.rampDownCapacityThresholdPct') as "ramp_down_capacity_threshold_pct",
json_extract_path_text(properties, '$.rampDownForceLogoffUsers') as "ramp_down_force_logoff_users",
json_extract_path_text(properties, '$.rampDownStopHostsWhen') as "ramp_down_stop_hosts_when",
json_extract_path_text(properties, '$.rampDownWaitTimeMinutes') as "ramp_down_wait_time_minutes",
json_extract_path_text(properties, '$.rampDownNotificationMessage') as "ramp_down_notification_message",
json_extract_path_text(properties, '$.offPeakStartTime') as "off_peak_start_time",
json_extract_path_text(properties, '$.offPeakLoadBalancingAlgorithm') as "off_peak_load_balancing_algorithm",
subscriptionId,
resourceGroupName,
scalingPlanName,
scalingPlanScheduleName
FROM azure.desktop_virtualization.scaling_plan_pooled_schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND scalingPlanName = 'replace-me';
```

</TabItem>
</Tabs>
