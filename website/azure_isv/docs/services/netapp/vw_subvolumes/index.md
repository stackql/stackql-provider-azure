--- 
title: vw_subvolumes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_subvolumes
  - netapp
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_subvolumes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_subvolumes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.netapp.vw_subvolumes" /></td></tr>
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
JSON_EXTRACT(properties, '$.path') as "path",
JSON_EXTRACT(properties, '$.size') as "size",
JSON_EXTRACT(properties, '$.parentPath') as "parent_path",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
accountName,
poolName,
volumeName,
subvolumeName
FROM azure_isv.netapp.subvolumes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND poolName = 'replace-me' AND volumeName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.path') as "path",
json_extract_path_text(properties, '$.size') as "size",
json_extract_path_text(properties, '$.parentPath') as "parent_path",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
accountName,
poolName,
volumeName,
subvolumeName
FROM azure_isv.netapp.subvolumes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND poolName = 'replace-me' AND volumeName = 'replace-me';
```

</TabItem>
</Tabs>
