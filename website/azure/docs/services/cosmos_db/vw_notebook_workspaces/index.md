--- 
title: vw_notebook_workspaces
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_notebook_workspaces
  - cosmos_db
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

Creates, updates, deletes, gets or lists a <code>vw_notebook_workspaces</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_notebook_workspaces</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.vw_notebook_workspaces" /></td></tr>
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
JSON_EXTRACT(properties, '$.notebookServerEndpoint') as "notebook_server_endpoint",
JSON_EXTRACT(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
accountName,
notebookWorkspaceName
FROM azure.cosmos_db.notebook_workspaces
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.notebookServerEndpoint') as "notebook_server_endpoint",
json_extract_path_text(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
accountName,
notebookWorkspaceName
FROM azure.cosmos_db.notebook_workspaces
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
