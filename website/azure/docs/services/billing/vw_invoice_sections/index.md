--- 
title: vw_invoice_sections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_invoice_sections
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

Creates, updates, deletes, gets or lists a <code>vw_invoice_sections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_invoice_sections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.vw_invoice_sections" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.reasonCode') as "reason_code",
JSON_EXTRACT(properties, '$.systemId') as "system_id",
JSON_EXTRACT(properties, '$.targetCloud') as "target_cloud",
JSON_EXTRACT(properties, '$.tags') as "tags",
billingAccountName,
billingProfileName,
invoiceSectionName
FROM azure.billing.invoice_sections
WHERE billingAccountName = 'replace-me' AND billingProfileName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.reasonCode') as "reason_code",
json_extract_path_text(properties, '$.systemId') as "system_id",
json_extract_path_text(properties, '$.targetCloud') as "target_cloud",
json_extract_path_text(properties, '$.tags') as "tags",
billingAccountName,
billingProfileName,
invoiceSectionName
FROM azure.billing.invoice_sections
WHERE billingAccountName = 'replace-me' AND billingProfileName = 'replace-me';
```

</TabItem>
</Tabs>
