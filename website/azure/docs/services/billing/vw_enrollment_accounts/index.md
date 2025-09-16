--- 
title: vw_enrollment_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_enrollment_accounts
  - billing
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

Creates, updates, deletes, gets or lists a <code>vw_enrollment_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_enrollment_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.vw_enrollment_accounts" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.costCenter') as "cost_center",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.departmentDisplayName') as "department_display_name",
JSON_EXTRACT(properties, '$.departmentId') as "department_id",
JSON_EXTRACT(properties, '$.isDevTestEnabled') as "is_dev_test_enabled",
JSON_EXTRACT(properties, '$.accountOwner') as "account_owner",
JSON_EXTRACT(properties, '$.authType') as "auth_type",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.startDate') as "start_date",
JSON_EXTRACT(properties, '$.endDate') as "end_date",
billingAccountName,
departmentName,
enrollmentAccountName
FROM azure.billing.enrollment_accounts
WHERE billingAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
tags as tags,
json_extract_path_text(properties, '$.costCenter') as "cost_center",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.departmentDisplayName') as "department_display_name",
json_extract_path_text(properties, '$.departmentId') as "department_id",
json_extract_path_text(properties, '$.isDevTestEnabled') as "is_dev_test_enabled",
json_extract_path_text(properties, '$.accountOwner') as "account_owner",
json_extract_path_text(properties, '$.authType') as "auth_type",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.startDate') as "start_date",
json_extract_path_text(properties, '$.endDate') as "end_date",
billingAccountName,
departmentName,
enrollmentAccountName
FROM azure.billing.enrollment_accounts
WHERE billingAccountName = 'replace-me';
```

</TabItem>
</Tabs>
