--- 
title: vw_caches
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_caches
  - api_management
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

Creates, updates, deletes, gets or lists a <code>vw_caches</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_caches</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_caches" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.connectionString') as "connection_string",
JSON_EXTRACT(properties, '$.useFromLocation') as "use_from_location",
JSON_EXTRACT(properties, '$.resourceId') as "resource_id",
subscriptionId,
resourceGroupName,
serviceName,
cacheId
FROM azure.api_management.caches
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.connectionString') as "connection_string",
json_extract_path_text(properties, '$.useFromLocation') as "use_from_location",
json_extract_path_text(properties, '$.resourceId') as "resource_id",
subscriptionId,
resourceGroupName,
serviceName,
cacheId
FROM azure.api_management.caches
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
