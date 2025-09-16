--- 
title: vw_backends
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_backends
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

Creates, updates, deletes, gets or lists a <code>vw_backends</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_backends</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_backends" /></td></tr>
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
JSON_EXTRACT(properties, '$.url') as "url",
JSON_EXTRACT(properties, '$.protocol') as "protocol",
JSON_EXTRACT(properties, '$.title') as "title",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.resourceId') as "resource_id",
JSON_EXTRACT(properties, '$.properties') as "properties",
JSON_EXTRACT(properties, '$.credentials') as "credentials",
JSON_EXTRACT(properties, '$.proxy') as "proxy",
JSON_EXTRACT(properties, '$.tls') as "tls",
JSON_EXTRACT(properties, '$.circuitBreaker') as "circuit_breaker",
JSON_EXTRACT(properties, '$.pool') as "pool",
JSON_EXTRACT(properties, '$.type') as "type",
subscriptionId,
resourceGroupName,
serviceName,
backendId
FROM azure.api_management.backends
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.url') as "url",
json_extract_path_text(properties, '$.protocol') as "protocol",
json_extract_path_text(properties, '$.title') as "title",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.resourceId') as "resource_id",
json_extract_path_text(properties, '$.properties') as "properties",
json_extract_path_text(properties, '$.credentials') as "credentials",
json_extract_path_text(properties, '$.proxy') as "proxy",
json_extract_path_text(properties, '$.tls') as "tls",
json_extract_path_text(properties, '$.circuitBreaker') as "circuit_breaker",
json_extract_path_text(properties, '$.pool') as "pool",
json_extract_path_text(properties, '$.type') as "type",
subscriptionId,
resourceGroupName,
serviceName,
backendId
FROM azure.api_management.backends
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
