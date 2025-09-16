--- 
title: vw_spatial_anchors_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_spatial_anchors_accounts
  - mixed_reality
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

Creates, updates, deletes, gets or lists a <code>vw_spatial_anchors_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_spatial_anchors_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mixed_reality.vw_spatial_anchors_accounts" /></td></tr>
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
location as location,
tags as tags,
identity as identity,
plan as plan,
sku as sku,
kind as kind,
systemData as system_data,
JSON_EXTRACT(properties, '$.storageAccountName') as "storage_account_name",
JSON_EXTRACT(properties, '$.accountId') as "account_id",
JSON_EXTRACT(properties, '$.accountDomain') as "account_domain",
subscriptionId,
resourceGroupName,
accountName
FROM azure.mixed_reality.spatial_anchors_accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
plan as plan,
sku as sku,
kind as kind,
systemData as system_data,
json_extract_path_text(properties, '$.storageAccountName') as "storage_account_name",
json_extract_path_text(properties, '$.accountId') as "account_id",
json_extract_path_text(properties, '$.accountDomain') as "account_domain",
subscriptionId,
resourceGroupName,
accountName
FROM azure.mixed_reality.spatial_anchors_accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
