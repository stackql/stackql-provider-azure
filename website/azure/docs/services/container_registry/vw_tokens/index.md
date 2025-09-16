--- 
title: vw_tokens
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_tokens
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

Creates, updates, deletes, gets or lists a <code>vw_tokens</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_tokens</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_registry.vw_tokens" /></td></tr>
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
JSON_EXTRACT(properties, '$.creationDate') as "creation_date",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.scopeMapId') as "scope_map_id",
JSON_EXTRACT(properties, '$.credentials') as "credentials",
JSON_EXTRACT(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
registryName,
tokenName
FROM azure.container_registry.tokens
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND registryName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.creationDate') as "creation_date",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.scopeMapId') as "scope_map_id",
json_extract_path_text(properties, '$.credentials') as "credentials",
json_extract_path_text(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
registryName,
tokenName
FROM azure.container_registry.tokens
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND registryName = 'replace-me';
```

</TabItem>
</Tabs>
