--- 
title: vw_deleted_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_deleted_accounts
  - storage
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

Creates, updates, deletes, gets or lists a <code>vw_deleted_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_deleted_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage.vw_deleted_accounts" /></td></tr>
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
JSON_EXTRACT(properties, '$.storageAccountResourceId') as "storage_account_resource_id",
JSON_EXTRACT(properties, '$.location') as "location",
JSON_EXTRACT(properties, '$.restoreReference') as "restore_reference",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.deletionTime') as "deletion_time",
subscriptionId,
location,
deletedAccountName
FROM azure.storage.deleted_accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.storageAccountResourceId') as "storage_account_resource_id",
json_extract_path_text(properties, '$.location') as "location",
json_extract_path_text(properties, '$.restoreReference') as "restore_reference",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.deletionTime') as "deletion_time",
subscriptionId,
location,
deletedAccountName
FROM azure.storage.deleted_accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
