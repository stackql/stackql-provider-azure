--- 
title: vw_role_assignment_schedule_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_role_assignment_schedule_instances
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

Creates, updates, deletes, gets or lists a <code>vw_role_assignment_schedule_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_role_assignment_schedule_instances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.vw_role_assignment_schedule_instances" /></td></tr>
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
JSON_EXTRACT(properties, '$.roleAssignmentScheduleId') as "role_assignment_schedule_id",
JSON_EXTRACT(properties, '$.originRoleAssignmentId') as "origin_role_assignment_id",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.startDateTime') as "start_date_time",
JSON_EXTRACT(properties, '$.endDateTime') as "end_date_time",
JSON_EXTRACT(properties, '$.linkedRoleEligibilityScheduleId') as "linked_role_eligibility_schedule_id",
JSON_EXTRACT(properties, '$.linkedRoleEligibilityScheduleInstanceId') as "linked_role_eligibility_schedule_instance_id",
JSON_EXTRACT(properties, '$.assignmentType') as "assignment_type",
JSON_EXTRACT(properties, '$.memberType') as "member_type",
JSON_EXTRACT(properties, '$.condition') as "condition",
JSON_EXTRACT(properties, '$.conditionVersion') as "condition_version",
JSON_EXTRACT(properties, '$.createdOn') as "created_on",
JSON_EXTRACT(properties, '$.expandedProperties') as "expanded_properties",
scope,
roleAssignmentScheduleInstanceName
FROM azure.authorization.role_assignment_schedule_instances
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
json_extract_path_text(properties, '$.roleAssignmentScheduleId') as "role_assignment_schedule_id",
json_extract_path_text(properties, '$.originRoleAssignmentId') as "origin_role_assignment_id",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.startDateTime') as "start_date_time",
json_extract_path_text(properties, '$.endDateTime') as "end_date_time",
json_extract_path_text(properties, '$.linkedRoleEligibilityScheduleId') as "linked_role_eligibility_schedule_id",
json_extract_path_text(properties, '$.linkedRoleEligibilityScheduleInstanceId') as "linked_role_eligibility_schedule_instance_id",
json_extract_path_text(properties, '$.assignmentType') as "assignment_type",
json_extract_path_text(properties, '$.memberType') as "member_type",
json_extract_path_text(properties, '$.condition') as "condition",
json_extract_path_text(properties, '$.conditionVersion') as "condition_version",
json_extract_path_text(properties, '$.createdOn') as "created_on",
json_extract_path_text(properties, '$.expandedProperties') as "expanded_properties",
scope,
roleAssignmentScheduleInstanceName
FROM azure.authorization.role_assignment_schedule_instances
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
