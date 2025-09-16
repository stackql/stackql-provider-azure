--- 
title: vw_workspace_global_schemata
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workspace_global_schemata
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

Creates, updates, deletes, gets or lists a <code>vw_workspace_global_schemata</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workspace_global_schemata</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_workspace_global_schemata" /></td></tr>
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
JSON_EXTRACT(properties, '$.schemaType') as "schema_type",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.value') as "value",
JSON_EXTRACT(properties, '$.document') as "document",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
serviceName,
workspaceId,
schemaId
FROM azure.api_management.workspace_global_schemata
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND workspaceId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.schemaType') as "schema_type",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.value') as "value",
json_extract_path_text(properties, '$.document') as "document",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
serviceName,
workspaceId,
schemaId
FROM azure.api_management.workspace_global_schemata
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND workspaceId = 'replace-me';
```

</TabItem>
</Tabs>
