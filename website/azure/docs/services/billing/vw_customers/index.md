--- 
title: vw_customers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_customers
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

Creates, updates, deletes, gets or lists a <code>vw_customers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_customers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.vw_customers" /></td></tr>
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
JSON_EXTRACT(properties, '$.billingProfileDisplayName') as "billing_profile_display_name",
JSON_EXTRACT(properties, '$.billingProfileId') as "billing_profile_id",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.systemId') as "system_id",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.enabledAzurePlans') as "enabled_azure_plans",
JSON_EXTRACT(properties, '$.resellers') as "resellers",
JSON_EXTRACT(properties, '$.tags') as "tags",
billingAccountName,
billingProfileName,
customerName
FROM azure.billing.customers
WHERE billingAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
tags as tags,
json_extract_path_text(properties, '$.billingProfileDisplayName') as "billing_profile_display_name",
json_extract_path_text(properties, '$.billingProfileId') as "billing_profile_id",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.systemId') as "system_id",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.enabledAzurePlans') as "enabled_azure_plans",
json_extract_path_text(properties, '$.resellers') as "resellers",
json_extract_path_text(properties, '$.tags') as "tags",
billingAccountName,
billingProfileName,
customerName
FROM azure.billing.customers
WHERE billingAccountName = 'replace-me';
```

</TabItem>
</Tabs>
