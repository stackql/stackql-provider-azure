--- 
title: vw_solutions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_solutions
  - operations_management
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

Creates, updates, deletes, gets or lists a <code>vw_solutions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_solutions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.operations_management.vw_solutions" /></td></tr>
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
plan as plan,
JSON_EXTRACT(properties, '$.workspaceResourceId') as "workspace_resource_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.containedResources') as "contained_resources",
JSON_EXTRACT(properties, '$.referencedResources') as "referenced_resources",
subscriptionId,
resourceGroupName,
solutionName
FROM azure.operations_management.solutions
WHERE subscriptionId = 'replace-me';
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
plan as plan,
json_extract_path_text(properties, '$.workspaceResourceId') as "workspace_resource_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.containedResources') as "contained_resources",
json_extract_path_text(properties, '$.referencedResources') as "referenced_resources",
subscriptionId,
resourceGroupName,
solutionName
FROM azure.operations_management.solutions
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
