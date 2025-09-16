--- 
title: vw_files
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_files
  - data_migration
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_migration.vw_files" /></td></tr>
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
etag as etag,
systemData as system_data,
type as type,
JSON_EXTRACT(properties, '$.extension') as "extension",
JSON_EXTRACT(properties, '$.filePath') as "file_path",
JSON_EXTRACT(properties, '$.lastModified') as "last_modified",
JSON_EXTRACT(properties, '$.mediaType') as "media_type",
JSON_EXTRACT(properties, '$.size') as "size",
subscriptionId,
groupName,
serviceName,
projectName,
fileName
FROM azure.data_migration.files
WHERE subscriptionId = 'replace-me' AND groupName = 'replace-me' AND serviceName = 'replace-me' AND projectName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
systemData as system_data,
type as type,
json_extract_path_text(properties, '$.extension') as "extension",
json_extract_path_text(properties, '$.filePath') as "file_path",
json_extract_path_text(properties, '$.lastModified') as "last_modified",
json_extract_path_text(properties, '$.mediaType') as "media_type",
json_extract_path_text(properties, '$.size') as "size",
subscriptionId,
groupName,
serviceName,
projectName,
fileName
FROM azure.data_migration.files
WHERE subscriptionId = 'replace-me' AND groupName = 'replace-me' AND serviceName = 'replace-me' AND projectName = 'replace-me';
```

</TabItem>
</Tabs>
