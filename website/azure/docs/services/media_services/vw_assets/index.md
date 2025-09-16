--- 
title: vw_assets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_assets
  - media_services
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

Creates, updates, deletes, gets or lists a <code>vw_assets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_assets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.media_services.vw_assets" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.assetId') as "asset_id",
JSON_EXTRACT(properties, '$.created') as "created",
JSON_EXTRACT(properties, '$.lastModified') as "last_modified",
JSON_EXTRACT(properties, '$.alternateId') as "alternate_id",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.container') as "container",
JSON_EXTRACT(properties, '$.storageAccountName') as "storage_account_name",
JSON_EXTRACT(properties, '$.storageEncryptionFormat') as "storage_encryption_format",
JSON_EXTRACT(properties, '$.encryptionScope') as "encryption_scope",
subscriptionId,
resourceGroupName,
accountName,
assetName
FROM azure.media_services.assets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.assetId') as "asset_id",
json_extract_path_text(properties, '$.created') as "created",
json_extract_path_text(properties, '$.lastModified') as "last_modified",
json_extract_path_text(properties, '$.alternateId') as "alternate_id",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.container') as "container",
json_extract_path_text(properties, '$.storageAccountName') as "storage_account_name",
json_extract_path_text(properties, '$.storageEncryptionFormat') as "storage_encryption_format",
json_extract_path_text(properties, '$.encryptionScope') as "encryption_scope",
subscriptionId,
resourceGroupName,
accountName,
assetName
FROM azure.media_services.assets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
