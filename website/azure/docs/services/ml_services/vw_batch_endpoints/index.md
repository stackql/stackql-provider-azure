--- 
title: vw_batch_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_batch_endpoints
  - ml_services
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

Creates, updates, deletes, gets or lists a <code>vw_batch_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_batch_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.vw_batch_endpoints" /></td></tr>
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
tags as tags,
identity as identity,
kind as kind,
sku as sku,
JSON_EXTRACT(properties, '$.authMode') as "auth_mode",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.keys') as "keys",
JSON_EXTRACT(properties, '$.properties') as "properties",
JSON_EXTRACT(properties, '$.scoringUri') as "scoring_uri",
JSON_EXTRACT(properties, '$.swaggerUri') as "swagger_uri",
JSON_EXTRACT(properties, '$.defaults') as "defaults",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
workspaceName,
endpointName
FROM azure.ml_services.batch_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
kind as kind,
sku as sku,
json_extract_path_text(properties, '$.authMode') as "auth_mode",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.keys') as "keys",
json_extract_path_text(properties, '$.properties') as "properties",
json_extract_path_text(properties, '$.scoringUri') as "scoring_uri",
json_extract_path_text(properties, '$.swaggerUri') as "swagger_uri",
json_extract_path_text(properties, '$.defaults') as "defaults",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
workspaceName,
endpointName
FROM azure.ml_services.batch_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
