--- 
title: vw_files
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_files
  - support
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

Creates, updates, deletes, gets or lists a <code>vw_files</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_files</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.support.vw_files" /></td></tr>
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
JSON_EXTRACT(properties, '$.createdOn') as "created_on",
JSON_EXTRACT(properties, '$.chunkSize') as "chunk_size",
JSON_EXTRACT(properties, '$.fileSize') as "file_size",
JSON_EXTRACT(properties, '$.numberOfChunks') as "number_of_chunks",
subscriptionId,
fileWorkspaceName,
fileName
FROM azure.support.files
WHERE subscriptionId = 'replace-me' AND fileWorkspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.createdOn') as "created_on",
json_extract_path_text(properties, '$.chunkSize') as "chunk_size",
json_extract_path_text(properties, '$.fileSize') as "file_size",
json_extract_path_text(properties, '$.numberOfChunks') as "number_of_chunks",
subscriptionId,
fileWorkspaceName,
fileName
FROM azure.support.files
WHERE subscriptionId = 'replace-me' AND fileWorkspaceName = 'replace-me';
```

</TabItem>
</Tabs>
