--- 
title: vw_infra_role_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_infra_role_instances
  - fabric_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_infra_role_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_infra_role_instances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.fabric_admin.vw_infra_role_instances" /></td></tr>
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
JSON_EXTRACT(properties, '$.scaleUnit') as "scale_unit",
JSON_EXTRACT(properties, '$.scaleUnitNode') as "scale_unit_node",
JSON_EXTRACT(properties, '$.size') as "size",
JSON_EXTRACT(properties, '$.state') as "state",
subscriptionId,
resourceGroupName,
location,
infraRoleInstance
FROM azure_stack.fabric_admin.infra_role_instances
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.scaleUnit') as "scale_unit",
json_extract_path_text(properties, '$.scaleUnitNode') as "scale_unit_node",
json_extract_path_text(properties, '$.size') as "size",
json_extract_path_text(properties, '$.state') as "state",
subscriptionId,
resourceGroupName,
location,
infraRoleInstance
FROM azure_stack.fabric_admin.infra_role_instances
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
