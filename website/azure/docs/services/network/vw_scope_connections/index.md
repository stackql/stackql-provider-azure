--- 
title: vw_scope_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_scope_connections
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_scope_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_scope_connections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_scope_connections" /></td></tr>
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
etag as etag,
systemData as system_data,
type as type,
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.resourceId') as "resource_id",
JSON_EXTRACT(properties, '$.connectionState') as "connection_state",
JSON_EXTRACT(properties, '$.description') as "description",
subscriptionId,
resourceGroupName,
networkManagerName,
scopeConnectionName
FROM azure.network.scope_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkManagerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
systemData as system_data,
type as type,
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.resourceId') as "resource_id",
json_extract_path_text(properties, '$.connectionState') as "connection_state",
json_extract_path_text(properties, '$.description') as "description",
subscriptionId,
resourceGroupName,
networkManagerName,
scopeConnectionName
FROM azure.network.scope_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkManagerName = 'replace-me';
```

</TabItem>
</Tabs>
