--- 
title: vw_workspace_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workspace_connections
  - ml_services
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

Creates, updates, deletes, gets or lists a <code>vw_workspace_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workspace_connections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.vw_workspace_connections" /></td></tr>
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
JSON_EXTRACT(properties, '$.authType') as "auth_type",
JSON_EXTRACT(properties, '$.category') as "category",
JSON_EXTRACT(properties, '$.createdByWorkspaceArmId') as "created_by_workspace_arm_id",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.expiryTime') as "expiry_time",
JSON_EXTRACT(properties, '$.group') as "group",
JSON_EXTRACT(properties, '$.isSharedToAll') as "is_shared_to_all",
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.peRequirement') as "pe_requirement",
JSON_EXTRACT(properties, '$.peStatus') as "pe_status",
JSON_EXTRACT(properties, '$.sharedUserList') as "shared_user_list",
JSON_EXTRACT(properties, '$.target') as "target",
JSON_EXTRACT(properties, '$.useWorkspaceManagedIdentity') as "use_workspace_managed_identity",
subscriptionId,
resourceGroupName,
workspaceName,
connectionName
FROM azure.ml_services.workspace_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.authType') as "auth_type",
json_extract_path_text(properties, '$.category') as "category",
json_extract_path_text(properties, '$.createdByWorkspaceArmId') as "created_by_workspace_arm_id",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.expiryTime') as "expiry_time",
json_extract_path_text(properties, '$.group') as "group",
json_extract_path_text(properties, '$.isSharedToAll') as "is_shared_to_all",
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.peRequirement') as "pe_requirement",
json_extract_path_text(properties, '$.peStatus') as "pe_status",
json_extract_path_text(properties, '$.sharedUserList') as "shared_user_list",
json_extract_path_text(properties, '$.target') as "target",
json_extract_path_text(properties, '$.useWorkspaceManagedIdentity') as "use_workspace_managed_identity",
subscriptionId,
resourceGroupName,
workspaceName,
connectionName
FROM azure.ml_services.workspace_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
