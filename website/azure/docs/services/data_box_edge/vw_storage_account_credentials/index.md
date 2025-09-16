--- 
title: vw_storage_account_credentials
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_storage_account_credentials
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

Creates, updates, deletes, gets or lists a <code>vw_storage_account_credentials</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_storage_account_credentials</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_box_edge.vw_storage_account_credentials" /></td></tr>
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
JSON_EXTRACT(properties, '$.alias') as "alias",
JSON_EXTRACT(properties, '$.userName') as "user_name",
JSON_EXTRACT(properties, '$.accountKey') as "account_key",
JSON_EXTRACT(properties, '$.connectionString') as "connection_string",
JSON_EXTRACT(properties, '$.sslStatus') as "ssl_status",
JSON_EXTRACT(properties, '$.blobDomainName') as "blob_domain_name",
JSON_EXTRACT(properties, '$.accountType') as "account_type",
JSON_EXTRACT(properties, '$.storageAccountId') as "storage_account_id",
subscriptionId,
resourceGroupName,
deviceName,
name
FROM azure.data_box_edge.storage_account_credentials
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
json_extract_path_text(properties, '$.alias') as "alias",
json_extract_path_text(properties, '$.userName') as "user_name",
json_extract_path_text(properties, '$.accountKey') as "account_key",
json_extract_path_text(properties, '$.connectionString') as "connection_string",
json_extract_path_text(properties, '$.sslStatus') as "ssl_status",
json_extract_path_text(properties, '$.blobDomainName') as "blob_domain_name",
json_extract_path_text(properties, '$.accountType') as "account_type",
json_extract_path_text(properties, '$.storageAccountId') as "storage_account_id",
subscriptionId,
resourceGroupName,
deviceName,
name
FROM azure.data_box_edge.storage_account_credentials
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
</Tabs>
