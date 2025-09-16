--- 
title: vw_vh_ds
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_vh_ds
  - test_base
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_vh_ds</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_vh_ds</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.vw_vh_ds" /></td></tr>
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
JSON_EXTRACT(properties, '$.fileName') as "file_name",
JSON_EXTRACT(properties, '$.fileSize') as "file_size",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
testBaseAccountName,
vhdName
FROM azure_extras.test_base.vh_ds
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.path') as "path",
json_extract_path_text(properties, '$.fileName') as "file_name",
json_extract_path_text(properties, '$.fileSize') as "file_size",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
testBaseAccountName,
vhdName
FROM azure_extras.test_base.vh_ds
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me';
```

</TabItem>
</Tabs>
