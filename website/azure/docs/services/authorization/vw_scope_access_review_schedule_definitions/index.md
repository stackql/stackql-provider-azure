--- 
title: vw_scope_access_review_schedule_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_scope_access_review_schedule_definitions
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

Creates, updates, deletes, gets or lists a <code>vw_scope_access_review_schedule_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_scope_access_review_schedule_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.vw_scope_access_review_schedule_definitions" /></td></tr>
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
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.descriptionForAdmins') as "description_for_admins",
JSON_EXTRACT(properties, '$.descriptionForReviewers') as "description_for_reviewers",
JSON_EXTRACT(properties, '$.createdBy') as "created_by",
JSON_EXTRACT(properties, '$.settings') as "settings",
JSON_EXTRACT(properties, '$.scope') as "scope",
JSON_EXTRACT(properties, '$.reviewers') as "reviewers",
JSON_EXTRACT(properties, '$.backupReviewers') as "backup_reviewers",
JSON_EXTRACT(properties, '$.reviewersType') as "reviewers_type",
JSON_EXTRACT(properties, '$.instances') as "instances",
scope,
scheduleDefinitionId
FROM azure.authorization.scope_access_review_schedule_definitions
WHERE scope = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.descriptionForAdmins') as "description_for_admins",
json_extract_path_text(properties, '$.descriptionForReviewers') as "description_for_reviewers",
json_extract_path_text(properties, '$.createdBy') as "created_by",
json_extract_path_text(properties, '$.settings') as "settings",
json_extract_path_text(properties, '$.scope') as "scope",
json_extract_path_text(properties, '$.reviewers') as "reviewers",
json_extract_path_text(properties, '$.backupReviewers') as "backup_reviewers",
json_extract_path_text(properties, '$.reviewersType') as "reviewers_type",
json_extract_path_text(properties, '$.instances') as "instances",
scope,
scheduleDefinitionId
FROM azure.authorization.scope_access_review_schedule_definitions
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
