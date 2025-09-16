--- 
title: vw_key_values
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_key_values
  - app_configuration
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

Creates, updates, deletes, gets or lists a <code>vw_key_values</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_key_values</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_configuration.vw_key_values" /></td></tr>
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
JSON_EXTRACT(properties, '$.key') as "key",
JSON_EXTRACT(properties, '$.label') as "label",
JSON_EXTRACT(properties, '$.value') as "value",
JSON_EXTRACT(properties, '$.contentType') as "content_type",
JSON_EXTRACT(properties, '$.eTag') as "e_tag",
JSON_EXTRACT(properties, '$.lastModified') as "last_modified",
JSON_EXTRACT(properties, '$.locked') as "locked",
JSON_EXTRACT(properties, '$.tags') as "tags",
subscriptionId,
resourceGroupName,
configStoreName,
keyValueName
FROM azure.app_configuration.key_values
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND configStoreName = 'replace-me' AND keyValueName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.key') as "key",
json_extract_path_text(properties, '$.label') as "label",
json_extract_path_text(properties, '$.value') as "value",
json_extract_path_text(properties, '$.contentType') as "content_type",
json_extract_path_text(properties, '$.eTag') as "e_tag",
json_extract_path_text(properties, '$.lastModified') as "last_modified",
json_extract_path_text(properties, '$.locked') as "locked",
json_extract_path_text(properties, '$.tags') as "tags",
subscriptionId,
resourceGroupName,
configStoreName,
keyValueName
FROM azure.app_configuration.key_values
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND configStoreName = 'replace-me' AND keyValueName = 'replace-me';
```

</TabItem>
</Tabs>
