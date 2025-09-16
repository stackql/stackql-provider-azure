--- 
title: vw_keys
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_keys
  - synapse
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

Creates, updates, deletes, gets or lists a <code>vw_keys</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_keys</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.vw_keys" /></td></tr>
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
JSON_EXTRACT(properties, '$.isActiveCMK') as "is_active_cmk",
JSON_EXTRACT(properties, '$.keyVaultUrl') as "key_vault_url",
subscriptionId,
resourceGroupName,
workspaceName,
keyName
FROM azure.synapse.keys
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.isActiveCMK') as "is_active_cmk",
json_extract_path_text(properties, '$.keyVaultUrl') as "key_vault_url",
subscriptionId,
resourceGroupName,
workspaceName,
keyName
FROM azure.synapse.keys
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
