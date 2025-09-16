--- 
title: vw_scope_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_scope_assignments
  - managed_network
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

Creates, updates, deletes, gets or lists a <code>vw_scope_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_scope_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network.vw_scope_assignments" /></td></tr>
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
JSON_EXTRACT(properties, '$.assignedManagedNetwork') as "assigned_managed_network",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.etag') as "etag",
scope,
scopeAssignmentName
FROM azure.managed_network.scope_assignments
WHERE scope = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.assignedManagedNetwork') as "assigned_managed_network",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.etag') as "etag",
scope,
scopeAssignmentName
FROM azure.managed_network.scope_assignments
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
