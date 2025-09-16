--- 
title: vw_apis
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_apis
  - api_center
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

Creates, updates, deletes, gets or lists a <code>vw_apis</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_apis</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_center.vw_apis" /></td></tr>
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
JSON_EXTRACT(properties, '$.title') as "title",
JSON_EXTRACT(properties, '$.kind') as "kind",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.summary') as "summary",
JSON_EXTRACT(properties, '$.lifecycleStage') as "lifecycle_stage",
JSON_EXTRACT(properties, '$.termsOfService') as "terms_of_service",
JSON_EXTRACT(properties, '$.externalDocumentation') as "external_documentation",
JSON_EXTRACT(properties, '$.contacts') as "contacts",
JSON_EXTRACT(properties, '$.license') as "license",
JSON_EXTRACT(properties, '$.customProperties') as "custom_properties",
subscriptionId,
resourceGroupName,
serviceName,
workspaceName,
apiName
FROM azure.api_center.apis
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.title') as "title",
json_extract_path_text(properties, '$.kind') as "kind",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.summary') as "summary",
json_extract_path_text(properties, '$.lifecycleStage') as "lifecycle_stage",
json_extract_path_text(properties, '$.termsOfService') as "terms_of_service",
json_extract_path_text(properties, '$.externalDocumentation') as "external_documentation",
json_extract_path_text(properties, '$.contacts') as "contacts",
json_extract_path_text(properties, '$.license') as "license",
json_extract_path_text(properties, '$.customProperties') as "custom_properties",
subscriptionId,
resourceGroupName,
serviceName,
workspaceName,
apiName
FROM azure.api_center.apis
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
