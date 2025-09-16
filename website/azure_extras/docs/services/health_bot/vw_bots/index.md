--- 
title: vw_bots
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_bots
  - health_bot
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

Creates, updates, deletes, gets or lists a <code>vw_bots</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_bots</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.health_bot.vw_bots" /></td></tr>
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
sku as sku,
identity as identity,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.botManagementPortalLink') as "bot_management_portal_link",
JSON_EXTRACT(properties, '$.keyVaultProperties') as "key_vault_properties",
subscriptionId,
resourceGroupName,
botName
FROM azure_extras.health_bot.bots
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
sku as sku,
identity as identity,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.botManagementPortalLink') as "bot_management_portal_link",
json_extract_path_text(properties, '$.keyVaultProperties') as "key_vault_properties",
subscriptionId,
resourceGroupName,
botName
FROM azure_extras.health_bot.bots
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
