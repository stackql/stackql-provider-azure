--- 
title: vw_tickets_no_subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_tickets_no_subscriptions
  - support
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

Creates, updates, deletes, gets or lists a <code>vw_tickets_no_subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_tickets_no_subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.support.vw_tickets_no_subscriptions" /></td></tr>
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
JSON_EXTRACT(properties, '$.supportTicketId') as "support_ticket_id",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.problemClassificationId') as "problem_classification_id",
JSON_EXTRACT(properties, '$.problemClassificationDisplayName') as "problem_classification_display_name",
JSON_EXTRACT(properties, '$.severity') as "severity",
JSON_EXTRACT(properties, '$.enrollmentId') as "enrollment_id",
JSON_EXTRACT(properties, '$.require24X7Response') as "require24_x7_response",
JSON_EXTRACT(properties, '$.advancedDiagnosticConsent') as "advanced_diagnostic_consent",
JSON_EXTRACT(properties, '$.problemScopingQuestions') as "problem_scoping_questions",
JSON_EXTRACT(properties, '$.supportPlanId') as "support_plan_id",
JSON_EXTRACT(properties, '$.contactDetails') as "contact_details",
JSON_EXTRACT(properties, '$.serviceLevelAgreement') as "service_level_agreement",
JSON_EXTRACT(properties, '$.supportEngineer') as "support_engineer",
JSON_EXTRACT(properties, '$.supportPlanType') as "support_plan_type",
JSON_EXTRACT(properties, '$.supportPlanDisplayName') as "support_plan_display_name",
JSON_EXTRACT(properties, '$.title') as "title",
JSON_EXTRACT(properties, '$.problemStartTime') as "problem_start_time",
JSON_EXTRACT(properties, '$.serviceId') as "service_id",
JSON_EXTRACT(properties, '$.serviceDisplayName') as "service_display_name",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.modifiedDate') as "modified_date",
JSON_EXTRACT(properties, '$.fileWorkspaceName') as "file_workspace_name",
JSON_EXTRACT(properties, '$.isTemporaryTicket') as "is_temporary_ticket",
JSON_EXTRACT(properties, '$.technicalTicketDetails') as "technical_ticket_details",
JSON_EXTRACT(properties, '$.quotaTicketDetails') as "quota_ticket_details",
JSON_EXTRACT(properties, '$.secondaryConsent') as "secondary_consent",
supportTicketName
FROM azure.support.tickets_no_subscriptions
WHERE supportTicketName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.supportTicketId') as "support_ticket_id",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.problemClassificationId') as "problem_classification_id",
json_extract_path_text(properties, '$.problemClassificationDisplayName') as "problem_classification_display_name",
json_extract_path_text(properties, '$.severity') as "severity",
json_extract_path_text(properties, '$.enrollmentId') as "enrollment_id",
json_extract_path_text(properties, '$.require24X7Response') as "require24_x7_response",
json_extract_path_text(properties, '$.advancedDiagnosticConsent') as "advanced_diagnostic_consent",
json_extract_path_text(properties, '$.problemScopingQuestions') as "problem_scoping_questions",
json_extract_path_text(properties, '$.supportPlanId') as "support_plan_id",
json_extract_path_text(properties, '$.contactDetails') as "contact_details",
json_extract_path_text(properties, '$.serviceLevelAgreement') as "service_level_agreement",
json_extract_path_text(properties, '$.supportEngineer') as "support_engineer",
json_extract_path_text(properties, '$.supportPlanType') as "support_plan_type",
json_extract_path_text(properties, '$.supportPlanDisplayName') as "support_plan_display_name",
json_extract_path_text(properties, '$.title') as "title",
json_extract_path_text(properties, '$.problemStartTime') as "problem_start_time",
json_extract_path_text(properties, '$.serviceId') as "service_id",
json_extract_path_text(properties, '$.serviceDisplayName') as "service_display_name",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.modifiedDate') as "modified_date",
json_extract_path_text(properties, '$.fileWorkspaceName') as "file_workspace_name",
json_extract_path_text(properties, '$.isTemporaryTicket') as "is_temporary_ticket",
json_extract_path_text(properties, '$.technicalTicketDetails') as "technical_ticket_details",
json_extract_path_text(properties, '$.quotaTicketDetails') as "quota_ticket_details",
json_extract_path_text(properties, '$.secondaryConsent') as "secondary_consent",
supportTicketName
FROM azure.support.tickets_no_subscriptions
WHERE supportTicketName = 'replace-me';
```

</TabItem>
</Tabs>
