--- 
title: vw_component_linked_storage_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_component_linked_storage_accounts
  - application_insights
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

Creates, updates, deletes, gets or lists a <code>vw_component_linked_storage_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_component_linked_storage_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.application_insights.vw_component_linked_storage_accounts" /></td></tr>
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
JSON_EXTRACT(properties, '$.linkedStorageAccount') as "linked_storage_account",
subscriptionId,
resourceGroupName,
resourceName,
storageType
FROM azure.application_insights.component_linked_storage_accounts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me' AND storageType = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.linkedStorageAccount') as "linked_storage_account",
subscriptionId,
resourceGroupName,
resourceName,
storageType
FROM azure.application_insights.component_linked_storage_accounts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me' AND storageType = 'replace-me';
```

</TabItem>
</Tabs>
