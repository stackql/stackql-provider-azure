--- 
title: vw_private_store_admin_request_approvals
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_private_store_admin_request_approvals
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

Creates, updates, deletes, gets or lists a <code>vw_private_store_admin_request_approvals</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_private_store_admin_request_approvals</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.marketplace.vw_private_store_admin_request_approvals" /></td></tr>
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
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.publisherId') as "publisher_id",
JSON_EXTRACT(properties, '$.adminAction') as "admin_action",
JSON_EXTRACT(properties, '$.approvedPlans') as "approved_plans",
JSON_EXTRACT(properties, '$.comment') as "comment",
JSON_EXTRACT(properties, '$.administrator') as "administrator",
JSON_EXTRACT(properties, '$.plans') as "plans",
JSON_EXTRACT(properties, '$.collectionIds') as "collection_ids",
JSON_EXTRACT(properties, '$.icon') as "icon",
privateStoreId,
adminRequestApprovalId,
publisherId
FROM azure_extras.marketplace.private_store_admin_request_approvals
WHERE privateStoreId = 'replace-me' AND adminRequestApprovalId = 'replace-me' AND publisherId = 'replace-me';
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
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.publisherId') as "publisher_id",
json_extract_path_text(properties, '$.adminAction') as "admin_action",
json_extract_path_text(properties, '$.approvedPlans') as "approved_plans",
json_extract_path_text(properties, '$.comment') as "comment",
json_extract_path_text(properties, '$.administrator') as "administrator",
json_extract_path_text(properties, '$.plans') as "plans",
json_extract_path_text(properties, '$.collectionIds') as "collection_ids",
json_extract_path_text(properties, '$.icon') as "icon",
privateStoreId,
adminRequestApprovalId,
publisherId
FROM azure_extras.marketplace.private_store_admin_request_approvals
WHERE privateStoreId = 'replace-me' AND adminRequestApprovalId = 'replace-me' AND publisherId = 'replace-me';
```

</TabItem>
</Tabs>
