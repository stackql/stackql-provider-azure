--- 
title: vw_role_definition_by_invoice_sections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_role_definition_by_invoice_sections
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

Creates, updates, deletes, gets or lists a <code>vw_role_definition_by_invoice_sections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_role_definition_by_invoice_sections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.vw_role_definition_by_invoice_sections" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.permissions') as "permissions",
JSON_EXTRACT(properties, '$.roleName') as "role_name",
billingAccountName,
billingProfileName,
invoiceSectionName,
roleDefinitionName
FROM azure.billing.role_definition_by_invoice_sections
WHERE billingAccountName = 'replace-me' AND billingProfileName = 'replace-me' AND invoiceSectionName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
tags as tags,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.permissions') as "permissions",
json_extract_path_text(properties, '$.roleName') as "role_name",
billingAccountName,
billingProfileName,
invoiceSectionName,
roleDefinitionName
FROM azure.billing.role_definition_by_invoice_sections
WHERE billingAccountName = 'replace-me' AND billingProfileName = 'replace-me' AND invoiceSectionName = 'replace-me';
```

</TabItem>
</Tabs>
