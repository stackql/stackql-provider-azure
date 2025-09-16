--- 
title: vw_scope_access_review_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_scope_access_review_instances
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

Creates, updates, deletes, gets or lists a <code>vw_scope_access_review_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_scope_access_review_instances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.vw_scope_access_review_instances" /></td></tr>
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
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.startDateTime') as "start_date_time",
JSON_EXTRACT(properties, '$.endDateTime') as "end_date_time",
JSON_EXTRACT(properties, '$.reviewers') as "reviewers",
JSON_EXTRACT(properties, '$.backupReviewers') as "backup_reviewers",
JSON_EXTRACT(properties, '$.reviewersType') as "reviewers_type",
scope,
scheduleDefinitionId,
id
FROM azure.authorization.scope_access_review_instances
WHERE scope = 'replace-me' AND scheduleDefinitionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.startDateTime') as "start_date_time",
json_extract_path_text(properties, '$.endDateTime') as "end_date_time",
json_extract_path_text(properties, '$.reviewers') as "reviewers",
json_extract_path_text(properties, '$.backupReviewers') as "backup_reviewers",
json_extract_path_text(properties, '$.reviewersType') as "reviewers_type",
scope,
scheduleDefinitionId,
id
FROM azure.authorization.scope_access_review_instances
WHERE scope = 'replace-me' AND scheduleDefinitionId = 'replace-me';
```

</TabItem>
</Tabs>
