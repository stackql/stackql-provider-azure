--- 
title: vw_schema_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_schema_versions
  - device_registry
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

Creates, updates, deletes, gets or lists a <code>vw_schema_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_schema_versions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.device_registry.vw_schema_versions" /></td></tr>
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
JSON_EXTRACT(properties, '$.uuid') as "uuid",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.schemaContent') as "schema_content",
JSON_EXTRACT(properties, '$.hash') as "hash",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
schemaRegistryName,
schemaName,
schemaVersionName
FROM azure.device_registry.schema_versions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND schemaRegistryName = 'replace-me' AND schemaName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.uuid') as "uuid",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.schemaContent') as "schema_content",
json_extract_path_text(properties, '$.hash') as "hash",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
schemaRegistryName,
schemaName,
schemaVersionName
FROM azure.device_registry.schema_versions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND schemaRegistryName = 'replace-me' AND schemaName = 'replace-me';
```

</TabItem>
</Tabs>
