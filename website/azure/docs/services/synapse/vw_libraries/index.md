--- 
title: vw_libraries
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_libraries
  - synapse
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

Creates, updates, deletes, gets or lists a <code>vw_libraries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_libraries</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.vw_libraries" /></td></tr>
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
JSON_EXTRACT(properties, '$.name') as "name",
JSON_EXTRACT(properties, '$.path') as "path",
JSON_EXTRACT(properties, '$.containerName') as "container_name",
JSON_EXTRACT(properties, '$.uploadedTimestamp') as "uploaded_timestamp",
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.provisioningStatus') as "provisioning_status",
JSON_EXTRACT(properties, '$.creatorId') as "creator_id",
subscriptionId,
resourceGroupName,
workspaceName,
libraryName
FROM azure.synapse.libraries
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.name') as "name",
json_extract_path_text(properties, '$.path') as "path",
json_extract_path_text(properties, '$.containerName') as "container_name",
json_extract_path_text(properties, '$.uploadedTimestamp') as "uploaded_timestamp",
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.provisioningStatus') as "provisioning_status",
json_extract_path_text(properties, '$.creatorId') as "creator_id",
subscriptionId,
resourceGroupName,
workspaceName,
libraryName
FROM azure.synapse.libraries
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
