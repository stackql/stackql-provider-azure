--- 
title: vw_join_requests
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_join_requests
  - education
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_join_requests</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_join_requests</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.education.vw_join_requests" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.firstName') as "first_name",
JSON_EXTRACT(properties, '$.lastName') as "last_name",
JSON_EXTRACT(properties, '$.email') as "email",
JSON_EXTRACT(properties, '$.status') as "status",
billingAccountName,
billingProfileName,
invoiceSectionName,
joinRequestName
FROM azure_extras.education.join_requests
WHERE billingAccountName = 'replace-me' AND billingProfileName = 'replace-me' AND invoiceSectionName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.firstName') as "first_name",
json_extract_path_text(properties, '$.lastName') as "last_name",
json_extract_path_text(properties, '$.email') as "email",
json_extract_path_text(properties, '$.status') as "status",
billingAccountName,
billingProfileName,
invoiceSectionName,
joinRequestName
FROM azure_extras.education.join_requests
WHERE billingAccountName = 'replace-me' AND billingProfileName = 'replace-me' AND invoiceSectionName = 'replace-me';
```

</TabItem>
</Tabs>
