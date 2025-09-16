--- 
title: vw_students
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_students
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

Creates, updates, deletes, gets or lists a <code>vw_students</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_students</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.education.vw_students" /></td></tr>
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
JSON_EXTRACT(properties, '$.role') as "role",
JSON_EXTRACT(properties, '$.budget') as "budget",
JSON_EXTRACT(properties, '$.subscriptionId') as "subscription_id",
JSON_EXTRACT(properties, '$.expirationDate') as "expiration_date",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.effectiveDate') as "effective_date",
JSON_EXTRACT(properties, '$.subscriptionAlias') as "subscription_alias",
JSON_EXTRACT(properties, '$.subscriptionInviteLastSentDate') as "subscription_invite_last_sent_date",
billingAccountName,
billingProfileName,
invoiceSectionName,
studentAlias
FROM azure_extras.education.students
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
json_extract_path_text(properties, '$.role') as "role",
json_extract_path_text(properties, '$.budget') as "budget",
json_extract_path_text(properties, '$.subscriptionId') as "subscription_id",
json_extract_path_text(properties, '$.expirationDate') as "expiration_date",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.effectiveDate') as "effective_date",
json_extract_path_text(properties, '$.subscriptionAlias') as "subscription_alias",
json_extract_path_text(properties, '$.subscriptionInviteLastSentDate') as "subscription_invite_last_sent_date",
billingAccountName,
billingProfileName,
invoiceSectionName,
studentAlias
FROM azure_extras.education.students
WHERE billingAccountName = 'replace-me' AND billingProfileName = 'replace-me' AND invoiceSectionName = 'replace-me';
```

</TabItem>
</Tabs>
