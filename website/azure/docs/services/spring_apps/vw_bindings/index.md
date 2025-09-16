--- 
title: vw_bindings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_bindings
  - spring_apps
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

Creates, updates, deletes, gets or lists a <code>vw_bindings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_bindings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.spring_apps.vw_bindings" /></td></tr>
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
JSON_EXTRACT(properties, '$.resourceName') as "resource_name",
JSON_EXTRACT(properties, '$.resourceType') as "resource_type",
JSON_EXTRACT(properties, '$.resourceId') as "resource_id",
JSON_EXTRACT(properties, '$.key') as "key",
JSON_EXTRACT(properties, '$.bindingParameters') as "binding_parameters",
JSON_EXTRACT(properties, '$.generatedProperties') as "generated_properties",
JSON_EXTRACT(properties, '$.createdAt') as "created_at",
JSON_EXTRACT(properties, '$.updatedAt') as "updated_at",
subscriptionId,
resourceGroupName,
serviceName,
appName,
bindingName
FROM azure.spring_apps.bindings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND appName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.resourceName') as "resource_name",
json_extract_path_text(properties, '$.resourceType') as "resource_type",
json_extract_path_text(properties, '$.resourceId') as "resource_id",
json_extract_path_text(properties, '$.key') as "key",
json_extract_path_text(properties, '$.bindingParameters') as "binding_parameters",
json_extract_path_text(properties, '$.generatedProperties') as "generated_properties",
json_extract_path_text(properties, '$.createdAt') as "created_at",
json_extract_path_text(properties, '$.updatedAt') as "updated_at",
subscriptionId,
resourceGroupName,
serviceName,
appName,
bindingName
FROM azure.spring_apps.bindings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND appName = 'replace-me';
```

</TabItem>
</Tabs>
