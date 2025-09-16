--- 
title: vw_workspace_products
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workspace_products
  - api_management
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

Creates, updates, deletes, gets or lists a <code>vw_workspace_products</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workspace_products</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_workspace_products" /></td></tr>
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
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.terms') as "terms",
JSON_EXTRACT(properties, '$.subscriptionRequired') as "subscription_required",
JSON_EXTRACT(properties, '$.approvalRequired') as "approval_required",
JSON_EXTRACT(properties, '$.subscriptionsLimit') as "subscriptions_limit",
JSON_EXTRACT(properties, '$.state') as "state",
subscriptionId,
resourceGroupName,
serviceName,
workspaceId,
productId
FROM azure.api_management.workspace_products
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND workspaceId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.terms') as "terms",
json_extract_path_text(properties, '$.subscriptionRequired') as "subscription_required",
json_extract_path_text(properties, '$.approvalRequired') as "approval_required",
json_extract_path_text(properties, '$.subscriptionsLimit') as "subscriptions_limit",
json_extract_path_text(properties, '$.state') as "state",
subscriptionId,
resourceGroupName,
serviceName,
workspaceId,
productId
FROM azure.api_management.workspace_products
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND workspaceId = 'replace-me';
```

</TabItem>
</Tabs>
