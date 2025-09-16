--- 
title: vw_scaling_plan_personal_schedules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_scaling_plan_personal_schedules
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

Creates, updates, deletes, gets or lists a <code>vw_scaling_plan_personal_schedules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_scaling_plan_personal_schedules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.desktop_virtualization.vw_scaling_plan_personal_schedules" /></td></tr>
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
JSON_EXTRACT(properties, '$.daysOfWeek') as "days_of_week",
JSON_EXTRACT(properties, '$.rampUpStartTime') as "ramp_up_start_time",
JSON_EXTRACT(properties, '$.rampUpAutoStartHosts') as "ramp_up_auto_start_hosts",
JSON_EXTRACT(properties, '$.rampUpStartVMOnConnect') as "ramp_up_start_vm_on_connect",
JSON_EXTRACT(properties, '$.rampUpActionOnDisconnect') as "ramp_up_action_on_disconnect",
JSON_EXTRACT(properties, '$.rampUpMinutesToWaitOnDisconnect') as "ramp_up_minutes_to_wait_on_disconnect",
JSON_EXTRACT(properties, '$.rampUpActionOnLogoff') as "ramp_up_action_on_logoff",
JSON_EXTRACT(properties, '$.rampUpMinutesToWaitOnLogoff') as "ramp_up_minutes_to_wait_on_logoff",
JSON_EXTRACT(properties, '$.peakStartTime') as "peak_start_time",
JSON_EXTRACT(properties, '$.peakStartVMOnConnect') as "peak_start_vm_on_connect",
JSON_EXTRACT(properties, '$.peakActionOnDisconnect') as "peak_action_on_disconnect",
JSON_EXTRACT(properties, '$.peakMinutesToWaitOnDisconnect') as "peak_minutes_to_wait_on_disconnect",
JSON_EXTRACT(properties, '$.peakActionOnLogoff') as "peak_action_on_logoff",
JSON_EXTRACT(properties, '$.peakMinutesToWaitOnLogoff') as "peak_minutes_to_wait_on_logoff",
JSON_EXTRACT(properties, '$.rampDownStartTime') as "ramp_down_start_time",
JSON_EXTRACT(properties, '$.rampDownStartVMOnConnect') as "ramp_down_start_vm_on_connect",
JSON_EXTRACT(properties, '$.rampDownActionOnDisconnect') as "ramp_down_action_on_disconnect",
JSON_EXTRACT(properties, '$.rampDownMinutesToWaitOnDisconnect') as "ramp_down_minutes_to_wait_on_disconnect",
JSON_EXTRACT(properties, '$.rampDownActionOnLogoff') as "ramp_down_action_on_logoff",
JSON_EXTRACT(properties, '$.rampDownMinutesToWaitOnLogoff') as "ramp_down_minutes_to_wait_on_logoff",
JSON_EXTRACT(properties, '$.offPeakStartTime') as "off_peak_start_time",
JSON_EXTRACT(properties, '$.offPeakStartVMOnConnect') as "off_peak_start_vm_on_connect",
JSON_EXTRACT(properties, '$.offPeakActionOnDisconnect') as "off_peak_action_on_disconnect",
JSON_EXTRACT(properties, '$.offPeakMinutesToWaitOnDisconnect') as "off_peak_minutes_to_wait_on_disconnect",
JSON_EXTRACT(properties, '$.offPeakActionOnLogoff') as "off_peak_action_on_logoff",
JSON_EXTRACT(properties, '$.offPeakMinutesToWaitOnLogoff') as "off_peak_minutes_to_wait_on_logoff",
subscriptionId,
resourceGroupName,
scalingPlanName,
scalingPlanScheduleName
FROM azure.desktop_virtualization.scaling_plan_personal_schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND scalingPlanName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.daysOfWeek') as "days_of_week",
json_extract_path_text(properties, '$.rampUpStartTime') as "ramp_up_start_time",
json_extract_path_text(properties, '$.rampUpAutoStartHosts') as "ramp_up_auto_start_hosts",
json_extract_path_text(properties, '$.rampUpStartVMOnConnect') as "ramp_up_start_vm_on_connect",
json_extract_path_text(properties, '$.rampUpActionOnDisconnect') as "ramp_up_action_on_disconnect",
json_extract_path_text(properties, '$.rampUpMinutesToWaitOnDisconnect') as "ramp_up_minutes_to_wait_on_disconnect",
json_extract_path_text(properties, '$.rampUpActionOnLogoff') as "ramp_up_action_on_logoff",
json_extract_path_text(properties, '$.rampUpMinutesToWaitOnLogoff') as "ramp_up_minutes_to_wait_on_logoff",
json_extract_path_text(properties, '$.peakStartTime') as "peak_start_time",
json_extract_path_text(properties, '$.peakStartVMOnConnect') as "peak_start_vm_on_connect",
json_extract_path_text(properties, '$.peakActionOnDisconnect') as "peak_action_on_disconnect",
json_extract_path_text(properties, '$.peakMinutesToWaitOnDisconnect') as "peak_minutes_to_wait_on_disconnect",
json_extract_path_text(properties, '$.peakActionOnLogoff') as "peak_action_on_logoff",
json_extract_path_text(properties, '$.peakMinutesToWaitOnLogoff') as "peak_minutes_to_wait_on_logoff",
json_extract_path_text(properties, '$.rampDownStartTime') as "ramp_down_start_time",
json_extract_path_text(properties, '$.rampDownStartVMOnConnect') as "ramp_down_start_vm_on_connect",
json_extract_path_text(properties, '$.rampDownActionOnDisconnect') as "ramp_down_action_on_disconnect",
json_extract_path_text(properties, '$.rampDownMinutesToWaitOnDisconnect') as "ramp_down_minutes_to_wait_on_disconnect",
json_extract_path_text(properties, '$.rampDownActionOnLogoff') as "ramp_down_action_on_logoff",
json_extract_path_text(properties, '$.rampDownMinutesToWaitOnLogoff') as "ramp_down_minutes_to_wait_on_logoff",
json_extract_path_text(properties, '$.offPeakStartTime') as "off_peak_start_time",
json_extract_path_text(properties, '$.offPeakStartVMOnConnect') as "off_peak_start_vm_on_connect",
json_extract_path_text(properties, '$.offPeakActionOnDisconnect') as "off_peak_action_on_disconnect",
json_extract_path_text(properties, '$.offPeakMinutesToWaitOnDisconnect') as "off_peak_minutes_to_wait_on_disconnect",
json_extract_path_text(properties, '$.offPeakActionOnLogoff') as "off_peak_action_on_logoff",
json_extract_path_text(properties, '$.offPeakMinutesToWaitOnLogoff') as "off_peak_minutes_to_wait_on_logoff",
subscriptionId,
resourceGroupName,
scalingPlanName,
scalingPlanScheduleName
FROM azure.desktop_virtualization.scaling_plan_personal_schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND scalingPlanName = 'replace-me';
```

</TabItem>
</Tabs>
