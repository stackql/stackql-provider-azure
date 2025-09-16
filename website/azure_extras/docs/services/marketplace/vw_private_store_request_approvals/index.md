--- 
title: vw_private_store_request_approvals
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_private_store_request_approvals
  - marketplace
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

Creates, updates, deletes, gets or lists a <code>vw_private_store_request_approvals</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_private_store_request_approvals</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.marketplace.vw_private_store_request_approvals" /></td></tr>
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
JSON_EXTRACT(properties, '$.offerId') as "offer_id",
JSON_EXTRACT(properties, '$.offerDisplayName') as "offer_display_name",
JSON_EXTRACT(properties, '$.publisherId') as "publisher_id",
JSON_EXTRACT(properties, '$.plansDetails') as "plans_details",
JSON_EXTRACT(properties, '$.isClosed') as "is_closed",
JSON_EXTRACT(properties, '$.messageCode') as "message_code",
privateStoreId,
requestApprovalId
FROM azure_extras.marketplace.private_store_request_approvals
WHERE privateStoreId = 'replace-me' AND requestApprovalId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.offerId') as "offer_id",
json_extract_path_text(properties, '$.offerDisplayName') as "offer_display_name",
json_extract_path_text(properties, '$.publisherId') as "publisher_id",
json_extract_path_text(properties, '$.plansDetails') as "plans_details",
json_extract_path_text(properties, '$.isClosed') as "is_closed",
json_extract_path_text(properties, '$.messageCode') as "message_code",
privateStoreId,
requestApprovalId
FROM azure_extras.marketplace.private_store_request_approvals
WHERE privateStoreId = 'replace-me' AND requestApprovalId = 'replace-me';
```

</TabItem>
</Tabs>
