--- 
title: vw_storage_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_storage_accounts
  - data_box_edge
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

Creates, updates, deletes, gets or lists a <code>vw_storage_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_storage_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_box_edge.vw_storage_accounts" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.storageAccountStatus') as "storage_account_status",
JSON_EXTRACT(properties, '$.dataPolicy') as "data_policy",
JSON_EXTRACT(properties, '$.storageAccountCredentialId') as "storage_account_credential_id",
JSON_EXTRACT(properties, '$.blobEndpoint') as "blob_endpoint",
JSON_EXTRACT(properties, '$.containerCount') as "container_count",
subscriptionId,
resourceGroupName,
deviceName,
storageAccountName
FROM azure.data_box_edge.storage_accounts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.storageAccountStatus') as "storage_account_status",
json_extract_path_text(properties, '$.dataPolicy') as "data_policy",
json_extract_path_text(properties, '$.storageAccountCredentialId') as "storage_account_credential_id",
json_extract_path_text(properties, '$.blobEndpoint') as "blob_endpoint",
json_extract_path_text(properties, '$.containerCount') as "container_count",
subscriptionId,
resourceGroupName,
deviceName,
storageAccountName
FROM azure.data_box_edge.storage_accounts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
</Tabs>
