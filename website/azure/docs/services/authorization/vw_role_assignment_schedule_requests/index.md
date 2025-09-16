--- 
title: vw_role_assignment_schedule_requests
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_role_assignment_schedule_requests
  - authorization
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

Creates, updates, deletes, gets or lists a <code>vw_role_assignment_schedule_requests</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_role_assignment_schedule_requests</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.vw_role_assignment_schedule_requests" /></td></tr>
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
JSON_EXTRACT(properties, '$.scope') as "scope",
JSON_EXTRACT(properties, '$.roleDefinitionId') as "role_definition_id",
JSON_EXTRACT(properties, '$.principalId') as "principal_id",
JSON_EXTRACT(properties, '$.principalType') as "principal_type",
JSON_EXTRACT(properties, '$.requestType') as "request_type",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.approvalId') as "approval_id",
JSON_EXTRACT(properties, '$.targetRoleAssignmentScheduleId') as "target_role_assignment_schedule_id",
JSON_EXTRACT(properties, '$.targetRoleAssignmentScheduleInstanceId') as "target_role_assignment_schedule_instance_id",
JSON_EXTRACT(properties, '$.scheduleInfo') as "schedule_info",
JSON_EXTRACT(properties, '$.linkedRoleEligibilityScheduleId') as "linked_role_eligibility_schedule_id",
JSON_EXTRACT(properties, '$.justification') as "justification",
JSON_EXTRACT(properties, '$.ticketInfo') as "ticket_info",
JSON_EXTRACT(properties, '$.condition') as "condition",
JSON_EXTRACT(properties, '$.conditionVersion') as "condition_version",
JSON_EXTRACT(properties, '$.createdOn') as "created_on",
JSON_EXTRACT(properties, '$.requestorId') as "requestor_id",
JSON_EXTRACT(properties, '$.expandedProperties') as "expanded_properties",
scope,
roleAssignmentScheduleRequestName
FROM azure.authorization.role_assignment_schedule_requests
WHERE scope = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.scope') as "scope",
json_extract_path_text(properties, '$.roleDefinitionId') as "role_definition_id",
json_extract_path_text(properties, '$.principalId') as "principal_id",
json_extract_path_text(properties, '$.principalType') as "principal_type",
json_extract_path_text(properties, '$.requestType') as "request_type",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.approvalId') as "approval_id",
json_extract_path_text(properties, '$.targetRoleAssignmentScheduleId') as "target_role_assignment_schedule_id",
json_extract_path_text(properties, '$.targetRoleAssignmentScheduleInstanceId') as "target_role_assignment_schedule_instance_id",
json_extract_path_text(properties, '$.scheduleInfo') as "schedule_info",
json_extract_path_text(properties, '$.linkedRoleEligibilityScheduleId') as "linked_role_eligibility_schedule_id",
json_extract_path_text(properties, '$.justification') as "justification",
json_extract_path_text(properties, '$.ticketInfo') as "ticket_info",
json_extract_path_text(properties, '$.condition') as "condition",
json_extract_path_text(properties, '$.conditionVersion') as "condition_version",
json_extract_path_text(properties, '$.createdOn') as "created_on",
json_extract_path_text(properties, '$.requestorId') as "requestor_id",
json_extract_path_text(properties, '$.expandedProperties') as "expanded_properties",
scope,
roleAssignmentScheduleRequestName
FROM azure.authorization.role_assignment_schedule_requests
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
