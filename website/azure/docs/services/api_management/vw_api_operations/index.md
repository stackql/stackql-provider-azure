--- 
title: vw_api_operations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_api_operations
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

Creates, updates, deletes, gets or lists a <code>vw_api_operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_api_operations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_api_operations" /></td></tr>
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
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.method') as "method",
JSON_EXTRACT(properties, '$.urlTemplate') as "url_template",
JSON_EXTRACT(properties, '$.templateParameters') as "template_parameters",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.request') as "request",
JSON_EXTRACT(properties, '$.responses') as "responses",
JSON_EXTRACT(properties, '$.policies') as "policies",
subscriptionId,
resourceGroupName,
serviceName,
apiId,
operationId
FROM azure.api_management.api_operations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND apiId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.method') as "method",
json_extract_path_text(properties, '$.urlTemplate') as "url_template",
json_extract_path_text(properties, '$.templateParameters') as "template_parameters",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.request') as "request",
json_extract_path_text(properties, '$.responses') as "responses",
json_extract_path_text(properties, '$.policies') as "policies",
subscriptionId,
resourceGroupName,
serviceName,
apiId,
operationId
FROM azure.api_management.api_operations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND apiId = 'replace-me';
```

</TabItem>
</Tabs>
