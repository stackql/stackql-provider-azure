--- 
title: vw_access_review_default_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_access_review_default_settings
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

Creates, updates, deletes, gets or lists a <code>vw_access_review_default_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_access_review_default_settings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.vw_access_review_default_settings" /></td></tr>
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
JSON_EXTRACT(properties, '$.mailNotificationsEnabled') as "mail_notifications_enabled",
JSON_EXTRACT(properties, '$.reminderNotificationsEnabled') as "reminder_notifications_enabled",
JSON_EXTRACT(properties, '$.defaultDecisionEnabled') as "default_decision_enabled",
JSON_EXTRACT(properties, '$.justificationRequiredOnApproval') as "justification_required_on_approval",
JSON_EXTRACT(properties, '$.defaultDecision') as "default_decision",
JSON_EXTRACT(properties, '$.autoApplyDecisionsEnabled') as "auto_apply_decisions_enabled",
JSON_EXTRACT(properties, '$.recommendationsEnabled') as "recommendations_enabled",
JSON_EXTRACT(properties, '$.recommendationLookBackDuration') as "recommendation_look_back_duration",
JSON_EXTRACT(properties, '$.instanceDurationInDays') as "instance_duration_in_days",
JSON_EXTRACT(properties, '$.recurrence') as "recurrence",
subscriptionId
FROM azure.authorization.access_review_default_settings
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.mailNotificationsEnabled') as "mail_notifications_enabled",
json_extract_path_text(properties, '$.reminderNotificationsEnabled') as "reminder_notifications_enabled",
json_extract_path_text(properties, '$.defaultDecisionEnabled') as "default_decision_enabled",
json_extract_path_text(properties, '$.justificationRequiredOnApproval') as "justification_required_on_approval",
json_extract_path_text(properties, '$.defaultDecision') as "default_decision",
json_extract_path_text(properties, '$.autoApplyDecisionsEnabled') as "auto_apply_decisions_enabled",
json_extract_path_text(properties, '$.recommendationsEnabled') as "recommendations_enabled",
json_extract_path_text(properties, '$.recommendationLookBackDuration') as "recommendation_look_back_duration",
json_extract_path_text(properties, '$.instanceDurationInDays') as "instance_duration_in_days",
json_extract_path_text(properties, '$.recurrence') as "recurrence",
subscriptionId
FROM azure.authorization.access_review_default_settings
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
