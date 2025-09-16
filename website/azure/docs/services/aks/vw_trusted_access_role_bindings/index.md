--- 
title: vw_trusted_access_role_bindings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_trusted_access_role_bindings
  - aks
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

Creates, updates, deletes, gets or lists a <code>vw_trusted_access_role_bindings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_trusted_access_role_bindings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.aks.vw_trusted_access_role_bindings" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.sourceResourceId') as "source_resource_id",
JSON_EXTRACT(properties, '$.roles') as "roles",
subscriptionId,
resourceGroupName,
resourceName,
trustedAccessRoleBindingName
FROM azure.aks.trusted_access_role_bindings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.sourceResourceId') as "source_resource_id",
json_extract_path_text(properties, '$.roles') as "roles",
subscriptionId,
resourceGroupName,
resourceName,
trustedAccessRoleBindingName
FROM azure.aks.trusted_access_role_bindings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
