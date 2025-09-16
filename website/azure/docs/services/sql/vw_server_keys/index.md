--- 
title: vw_server_keys
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_server_keys
  - sql
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

Creates, updates, deletes, gets or lists a <code>vw_server_keys</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_server_keys</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_server_keys" /></td></tr>
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
location as location,
kind as kind,
JSON_EXTRACT(properties, '$.subregion') as "subregion",
JSON_EXTRACT(properties, '$.serverKeyType') as "server_key_type",
JSON_EXTRACT(properties, '$.uri') as "uri",
JSON_EXTRACT(properties, '$.thumbprint') as "thumbprint",
JSON_EXTRACT(properties, '$.creationDate') as "creation_date",
JSON_EXTRACT(properties, '$.autoRotationEnabled') as "auto_rotation_enabled",
subscriptionId,
resourceGroupName,
serverName,
keyName
FROM azure.sql.server_keys
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
kind as kind,
json_extract_path_text(properties, '$.subregion') as "subregion",
json_extract_path_text(properties, '$.serverKeyType') as "server_key_type",
json_extract_path_text(properties, '$.uri') as "uri",
json_extract_path_text(properties, '$.thumbprint') as "thumbprint",
json_extract_path_text(properties, '$.creationDate') as "creation_date",
json_extract_path_text(properties, '$.autoRotationEnabled') as "auto_rotation_enabled",
subscriptionId,
resourceGroupName,
serverName,
keyName
FROM azure.sql.server_keys
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
</Tabs>
