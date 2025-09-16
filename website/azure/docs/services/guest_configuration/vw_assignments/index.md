--- 
title: vw_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_assignments
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

Creates, updates, deletes, gets or lists a <code>vw_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.guest_configuration.vw_assignments" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.targetResourceId') as "target_resource_id",
JSON_EXTRACT(properties, '$.guestConfiguration') as "guest_configuration",
JSON_EXTRACT(properties, '$.complianceStatus') as "compliance_status",
JSON_EXTRACT(properties, '$.lastComplianceStatusChecked') as "last_compliance_status_checked",
JSON_EXTRACT(properties, '$.latestReportId') as "latest_report_id",
JSON_EXTRACT(properties, '$.parameterHash') as "parameter_hash",
JSON_EXTRACT(properties, '$.latestAssignmentReport') as "latest_assignment_report",
JSON_EXTRACT(properties, '$.context') as "context",
JSON_EXTRACT(properties, '$.assignmentHash') as "assignment_hash",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.resourceType') as "resource_type",
JSON_EXTRACT(properties, '$.vmssVMList') as "vmss_vm_list",
subscriptionId,
resourceGroupName,
vmName,
guestConfigurationAssignmentName
FROM azure.guest_configuration.assignments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vmName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.targetResourceId') as "target_resource_id",
json_extract_path_text(properties, '$.guestConfiguration') as "guest_configuration",
json_extract_path_text(properties, '$.complianceStatus') as "compliance_status",
json_extract_path_text(properties, '$.lastComplianceStatusChecked') as "last_compliance_status_checked",
json_extract_path_text(properties, '$.latestReportId') as "latest_report_id",
json_extract_path_text(properties, '$.parameterHash') as "parameter_hash",
json_extract_path_text(properties, '$.latestAssignmentReport') as "latest_assignment_report",
json_extract_path_text(properties, '$.context') as "context",
json_extract_path_text(properties, '$.assignmentHash') as "assignment_hash",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resourceType') as "resource_type",
json_extract_path_text(properties, '$.vmssVMList') as "vmss_vm_list",
subscriptionId,
resourceGroupName,
vmName,
guestConfigurationAssignmentName
FROM azure.guest_configuration.assignments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vmName = 'replace-me';
```

</TabItem>
</Tabs>
