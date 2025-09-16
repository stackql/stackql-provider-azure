--- 
title: vw_iot_security_solutions_analytics_aggregated_alerts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_iot_security_solutions_analytics_aggregated_alerts
  - security
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

Creates, updates, deletes, gets or lists a <code>vw_iot_security_solutions_analytics_aggregated_alerts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_iot_security_solutions_analytics_aggregated_alerts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_iot_security_solutions_analytics_aggregated_alerts" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.alertType') as "alert_type",
JSON_EXTRACT(properties, '$.alertDisplayName') as "alert_display_name",
JSON_EXTRACT(properties, '$.aggregatedDateUtc') as "aggregated_date_utc",
JSON_EXTRACT(properties, '$.vendorName') as "vendor_name",
JSON_EXTRACT(properties, '$.reportedSeverity') as "reported_severity",
JSON_EXTRACT(properties, '$.remediationSteps') as "remediation_steps",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.count') as "count",
JSON_EXTRACT(properties, '$.effectedResourceType') as "effected_resource_type",
JSON_EXTRACT(properties, '$.systemSource') as "system_source",
JSON_EXTRACT(properties, '$.actionTaken') as "action_taken",
JSON_EXTRACT(properties, '$.logAnalyticsQuery') as "log_analytics_query",
JSON_EXTRACT(properties, '$.topDevicesList') as "top_devices_list",
subscriptionId,
resourceGroupName,
solutionName,
aggregatedAlertName
FROM azure.security.iot_security_solutions_analytics_aggregated_alerts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND solutionName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
tags as tags,
json_extract_path_text(properties, '$.alertType') as "alert_type",
json_extract_path_text(properties, '$.alertDisplayName') as "alert_display_name",
json_extract_path_text(properties, '$.aggregatedDateUtc') as "aggregated_date_utc",
json_extract_path_text(properties, '$.vendorName') as "vendor_name",
json_extract_path_text(properties, '$.reportedSeverity') as "reported_severity",
json_extract_path_text(properties, '$.remediationSteps') as "remediation_steps",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.count') as "count",
json_extract_path_text(properties, '$.effectedResourceType') as "effected_resource_type",
json_extract_path_text(properties, '$.systemSource') as "system_source",
json_extract_path_text(properties, '$.actionTaken') as "action_taken",
json_extract_path_text(properties, '$.logAnalyticsQuery') as "log_analytics_query",
json_extract_path_text(properties, '$.topDevicesList') as "top_devices_list",
subscriptionId,
resourceGroupName,
solutionName,
aggregatedAlertName
FROM azure.security.iot_security_solutions_analytics_aggregated_alerts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND solutionName = 'replace-me';
```

</TabItem>
</Tabs>
