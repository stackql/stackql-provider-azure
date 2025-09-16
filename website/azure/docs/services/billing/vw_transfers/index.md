--- 
title: vw_transfers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_transfers
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

Creates, updates, deletes, gets or lists a <code>vw_transfers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_transfers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.vw_transfers" /></td></tr>
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
JSON_EXTRACT(properties, '$.expirationTime') as "expiration_time",
JSON_EXTRACT(properties, '$.transferStatus') as "transfer_status",
JSON_EXTRACT(properties, '$.recipientEmailId') as "recipient_email_id",
JSON_EXTRACT(properties, '$.initiatorEmailId') as "initiator_email_id",
JSON_EXTRACT(properties, '$.canceledBy') as "canceled_by",
JSON_EXTRACT(properties, '$.detailedTransferStatus') as "detailed_transfer_status",
billingAccountName,
billingProfileName,
invoiceSectionName,
transferName
FROM azure.billing.transfers
WHERE billingAccountName = 'replace-me' AND billingProfileName = 'replace-me' AND invoiceSectionName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
tags as tags,
json_extract_path_text(properties, '$.expirationTime') as "expiration_time",
json_extract_path_text(properties, '$.transferStatus') as "transfer_status",
json_extract_path_text(properties, '$.recipientEmailId') as "recipient_email_id",
json_extract_path_text(properties, '$.initiatorEmailId') as "initiator_email_id",
json_extract_path_text(properties, '$.canceledBy') as "canceled_by",
json_extract_path_text(properties, '$.detailedTransferStatus') as "detailed_transfer_status",
billingAccountName,
billingProfileName,
invoiceSectionName,
transferName
FROM azure.billing.transfers
WHERE billingAccountName = 'replace-me' AND billingProfileName = 'replace-me' AND invoiceSectionName = 'replace-me';
```

</TabItem>
</Tabs>
