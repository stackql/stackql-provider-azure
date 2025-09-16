--- 
title: vw_projects
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_projects
  - storage_mover
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

Creates, updates, deletes, gets or lists a <code>vw_projects</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_projects</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_mover.vw_projects" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
storageMoverName,
projectName
FROM azure.storage_mover.projects
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND storageMoverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
storageMoverName,
projectName
FROM azure.storage_mover.projects
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND storageMoverName = 'replace-me';
```

</TabItem>
</Tabs>
