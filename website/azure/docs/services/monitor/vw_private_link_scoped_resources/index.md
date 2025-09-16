--- 
title: vw_private_link_scoped_resources
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_private_link_scoped_resources
  - monitor
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

Creates, updates, deletes, gets or lists a <code>vw_private_link_scoped_resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_private_link_scoped_resources</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.monitor.vw_private_link_scoped_resources" /></td></tr>
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
JSON_EXTRACT(properties, '$.linkedResourceId') as "linked_resource_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
scopeName,
name
FROM azure.monitor.private_link_scoped_resources
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND scopeName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.linkedResourceId') as "linked_resource_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
scopeName,
name
FROM azure.monitor.private_link_scoped_resources
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND scopeName = 'replace-me';
```

</TabItem>
</Tabs>
