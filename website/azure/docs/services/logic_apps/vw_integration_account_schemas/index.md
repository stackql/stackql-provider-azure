--- 
title: vw_integration_account_schemas
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_integration_account_schemas
  - logic_apps
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

Creates, updates, deletes, gets or lists a <code>vw_integration_account_schemas</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_integration_account_schemas</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.logic_apps.vw_integration_account_schemas" /></td></tr>
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
location as location,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.schemaType') as "schema_type",
JSON_EXTRACT(properties, '$.targetNamespace') as "target_namespace",
JSON_EXTRACT(properties, '$.documentName') as "document_name",
JSON_EXTRACT(properties, '$.fileName') as "file_name",
JSON_EXTRACT(properties, '$.createdTime') as "created_time",
JSON_EXTRACT(properties, '$.changedTime') as "changed_time",
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.content') as "content",
JSON_EXTRACT(properties, '$.contentType') as "content_type",
JSON_EXTRACT(properties, '$.contentLink') as "content_link",
subscriptionId,
resourceGroupName,
integrationAccountName,
schemaName
FROM azure.logic_apps.integration_account_schemas
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND integrationAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.schemaType') as "schema_type",
json_extract_path_text(properties, '$.targetNamespace') as "target_namespace",
json_extract_path_text(properties, '$.documentName') as "document_name",
json_extract_path_text(properties, '$.fileName') as "file_name",
json_extract_path_text(properties, '$.createdTime') as "created_time",
json_extract_path_text(properties, '$.changedTime') as "changed_time",
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.content') as "content",
json_extract_path_text(properties, '$.contentType') as "content_type",
json_extract_path_text(properties, '$.contentLink') as "content_link",
subscriptionId,
resourceGroupName,
integrationAccountName,
schemaName
FROM azure.logic_apps.integration_account_schemas
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND integrationAccountName = 'replace-me';
```

</TabItem>
</Tabs>
