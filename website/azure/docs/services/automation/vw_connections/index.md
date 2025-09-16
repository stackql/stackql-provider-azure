--- 
title: vw_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_connections
  - automation
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

Creates, updates, deletes, gets or lists a <code>vw_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_connections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.vw_connections" /></td></tr>
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
JSON_EXTRACT(properties, '$.connectionType') as "connection_type",
JSON_EXTRACT(properties, '$.fieldDefinitionValues') as "field_definition_values",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.description') as "description",
subscriptionId,
resourceGroupName,
automationAccountName,
connectionName
FROM azure.automation.connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.connectionType') as "connection_type",
json_extract_path_text(properties, '$.fieldDefinitionValues') as "field_definition_values",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.description') as "description",
subscriptionId,
resourceGroupName,
automationAccountName,
connectionName
FROM azure.automation.connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
</Tabs>
