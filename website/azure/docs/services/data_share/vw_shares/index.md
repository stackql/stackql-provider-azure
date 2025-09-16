--- 
title: vw_shares
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_shares
  - data_share
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

Creates, updates, deletes, gets or lists a <code>vw_shares</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_shares</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_share.vw_shares" /></td></tr>
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
systemData as system_data,
type as type,
JSON_EXTRACT(properties, '$.createdAt') as "created_at",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.shareKind') as "share_kind",
JSON_EXTRACT(properties, '$.terms') as "terms",
JSON_EXTRACT(properties, '$.userEmail') as "user_email",
JSON_EXTRACT(properties, '$.userName') as "user_name",
subscriptionId,
resourceGroupName,
accountName,
shareName
FROM azure.data_share.shares
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
systemData as system_data,
type as type,
json_extract_path_text(properties, '$.createdAt') as "created_at",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.shareKind') as "share_kind",
json_extract_path_text(properties, '$.terms') as "terms",
json_extract_path_text(properties, '$.userEmail') as "user_email",
json_extract_path_text(properties, '$.userName') as "user_name",
subscriptionId,
resourceGroupName,
accountName,
shareName
FROM azure.data_share.shares
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
