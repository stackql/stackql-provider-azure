--- 
title: vw_hcrp_assignment_reports
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_hcrp_assignment_reports
  - guest_configuration
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

Creates, updates, deletes, gets or lists a <code>vw_hcrp_assignment_reports</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_hcrp_assignment_reports</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.guest_configuration.vw_hcrp_assignment_reports" /></td></tr>
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
JSON_EXTRACT(properties, '$.complianceStatus') as "compliance_status",
JSON_EXTRACT(properties, '$.reportId') as "report_id",
JSON_EXTRACT(properties, '$.assignment') as "assignment",
JSON_EXTRACT(properties, '$.vm') as "vm",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.details') as "details",
JSON_EXTRACT(properties, '$.vmssResourceId') as "vmss_resource_id",
subscriptionId,
resourceGroupName,
machineName,
guestConfigurationAssignmentName,
reportId
FROM azure.guest_configuration.hcrp_assignment_reports
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND machineName = 'replace-me' AND guestConfigurationAssignmentName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
json_extract_path_text(properties, '$.complianceStatus') as "compliance_status",
json_extract_path_text(properties, '$.reportId') as "report_id",
json_extract_path_text(properties, '$.assignment') as "assignment",
json_extract_path_text(properties, '$.vm') as "vm",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.details') as "details",
json_extract_path_text(properties, '$.vmssResourceId') as "vmss_resource_id",
subscriptionId,
resourceGroupName,
machineName,
guestConfigurationAssignmentName,
reportId
FROM azure.guest_configuration.hcrp_assignment_reports
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND machineName = 'replace-me' AND guestConfigurationAssignmentName = 'replace-me';
```

</TabItem>
</Tabs>
