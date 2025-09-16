--- 
title: vw_resource_guards
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_resource_guards
  - data_protection
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

Creates, updates, deletes, gets or lists a <code>vw_resource_guards</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_resource_guards</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_protection.vw_resource_guards" /></td></tr>
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
eTag as e_tag,
tags as tags,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.allowAutoApprovals') as "allow_auto_approvals",
JSON_EXTRACT(properties, '$.resourceGuardOperations') as "resource_guard_operations",
JSON_EXTRACT(properties, '$.vaultCriticalOperationExclusionList') as "vault_critical_operation_exclusion_list",
JSON_EXTRACT(properties, '$.description') as "description",
subscriptionId,
resourceGroupName,
resourceGuardsName
FROM azure.data_protection.resource_guards
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceGuardsName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
eTag as e_tag,
tags as tags,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.allowAutoApprovals') as "allow_auto_approvals",
json_extract_path_text(properties, '$.resourceGuardOperations') as "resource_guard_operations",
json_extract_path_text(properties, '$.vaultCriticalOperationExclusionList') as "vault_critical_operation_exclusion_list",
json_extract_path_text(properties, '$.description') as "description",
subscriptionId,
resourceGroupName,
resourceGuardsName
FROM azure.data_protection.resource_guards
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceGuardsName = 'replace-me';
```

</TabItem>
</Tabs>
