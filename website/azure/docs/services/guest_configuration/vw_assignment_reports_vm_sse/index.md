--- 
title: vw_assignment_reports_vm_sse
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_assignment_reports_vm_sse
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

Creates, updates, deletes, gets or lists a <code>vw_assignment_reports_vm_sse</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_assignment_reports_vm_sse</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.guest_configuration.vw_assignment_reports_vm_sse" /></td></tr>
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
vmssName,
name,
id
FROM azure.guest_configuration.assignment_reports_vm_sse
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vmssName = 'replace-me' AND name = 'replace-me';
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
vmssName,
name,
id
FROM azure.guest_configuration.assignment_reports_vm_sse
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vmssName = 'replace-me' AND name = 'replace-me';
```

</TabItem>
</Tabs>
