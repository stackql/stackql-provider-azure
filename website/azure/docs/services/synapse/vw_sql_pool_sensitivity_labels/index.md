--- 
title: vw_sql_pool_sensitivity_labels
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sql_pool_sensitivity_labels
  - synapse
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

Creates, updates, deletes, gets or lists a <code>vw_sql_pool_sensitivity_labels</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sql_pool_sensitivity_labels</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.vw_sql_pool_sensitivity_labels" /></td></tr>
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
managedBy as managed_by,
JSON_EXTRACT(properties, '$.schemaName') as "schema_name",
JSON_EXTRACT(properties, '$.tableName') as "table_name",
JSON_EXTRACT(properties, '$.columnName') as "column_name",
JSON_EXTRACT(properties, '$.labelName') as "label_name",
JSON_EXTRACT(properties, '$.labelId') as "label_id",
JSON_EXTRACT(properties, '$.informationType') as "information_type",
JSON_EXTRACT(properties, '$.informationTypeId') as "information_type_id",
JSON_EXTRACT(properties, '$.isDisabled') as "is_disabled",
JSON_EXTRACT(properties, '$.rank') as "rank",
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName,
schemaName,
tableName,
columnName,
sensitivityLabelSource
FROM azure.synapse.sql_pool_sensitivity_labels
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND sqlPoolName = 'replace-me' AND schemaName = 'replace-me' AND tableName = 'replace-me' AND columnName = 'replace-me' AND sensitivityLabelSource = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
managedBy as managed_by,
json_extract_path_text(properties, '$.schemaName') as "schema_name",
json_extract_path_text(properties, '$.tableName') as "table_name",
json_extract_path_text(properties, '$.columnName') as "column_name",
json_extract_path_text(properties, '$.labelName') as "label_name",
json_extract_path_text(properties, '$.labelId') as "label_id",
json_extract_path_text(properties, '$.informationType') as "information_type",
json_extract_path_text(properties, '$.informationTypeId') as "information_type_id",
json_extract_path_text(properties, '$.isDisabled') as "is_disabled",
json_extract_path_text(properties, '$.rank') as "rank",
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName,
schemaName,
tableName,
columnName,
sensitivityLabelSource
FROM azure.synapse.sql_pool_sensitivity_labels
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND sqlPoolName = 'replace-me' AND schemaName = 'replace-me' AND tableName = 'replace-me' AND columnName = 'replace-me' AND sensitivityLabelSource = 'replace-me';
```

</TabItem>
</Tabs>
