--- 
title: vw_webhooks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_webhooks
  - container_registry
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

Creates, updates, deletes, gets or lists a <code>vw_webhooks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_webhooks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_registry.vw_webhooks" /></td></tr>
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
location as location,
type as type,
tags as tags,
systemData as system_data,
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.scope') as "scope",
JSON_EXTRACT(properties, '$.actions') as "actions",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
registryName,
webhookName
FROM azure.container_registry.webhooks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND registryName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
systemData as system_data,
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.scope') as "scope",
json_extract_path_text(properties, '$.actions') as "actions",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
registryName,
webhookName
FROM azure.container_registry.webhooks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND registryName = 'replace-me';
```

</TabItem>
</Tabs>
