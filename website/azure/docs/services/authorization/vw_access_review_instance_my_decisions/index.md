--- 
title: vw_access_review_instance_my_decisions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_access_review_instance_my_decisions
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

Creates, updates, deletes, gets or lists a <code>vw_access_review_instance_my_decisions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_access_review_instance_my_decisions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.vw_access_review_instance_my_decisions" /></td></tr>
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
JSON_EXTRACT(properties, '$.principal') as "principal",
JSON_EXTRACT(properties, '$.resource') as "resource",
JSON_EXTRACT(properties, '$.recommendation') as "recommendation",
JSON_EXTRACT(properties, '$.decision') as "decision",
JSON_EXTRACT(properties, '$.justification') as "justification",
JSON_EXTRACT(properties, '$.reviewedDateTime') as "reviewed_date_time",
JSON_EXTRACT(properties, '$.reviewedBy') as "reviewed_by",
JSON_EXTRACT(properties, '$.applyResult') as "apply_result",
JSON_EXTRACT(properties, '$.appliedDateTime') as "applied_date_time",
JSON_EXTRACT(properties, '$.appliedBy') as "applied_by",
JSON_EXTRACT(properties, '$.insights') as "insights",
JSON_EXTRACT(properties, '$.principalResourceMembership') as "principal_resource_membership",
scheduleDefinitionId,
id,
decisionId
FROM azure.authorization.access_review_instance_my_decisions
WHERE scheduleDefinitionId = 'replace-me' AND id = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.principal') as "principal",
json_extract_path_text(properties, '$.resource') as "resource",
json_extract_path_text(properties, '$.recommendation') as "recommendation",
json_extract_path_text(properties, '$.decision') as "decision",
json_extract_path_text(properties, '$.justification') as "justification",
json_extract_path_text(properties, '$.reviewedDateTime') as "reviewed_date_time",
json_extract_path_text(properties, '$.reviewedBy') as "reviewed_by",
json_extract_path_text(properties, '$.applyResult') as "apply_result",
json_extract_path_text(properties, '$.appliedDateTime') as "applied_date_time",
json_extract_path_text(properties, '$.appliedBy') as "applied_by",
json_extract_path_text(properties, '$.insights') as "insights",
json_extract_path_text(properties, '$.principalResourceMembership') as "principal_resource_membership",
scheduleDefinitionId,
id,
decisionId
FROM azure.authorization.access_review_instance_my_decisions
WHERE scheduleDefinitionId = 'replace-me' AND id = 'replace-me';
```

</TabItem>
</Tabs>
