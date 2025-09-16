--- 
title: vw_spark_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_spark_configurations
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

Creates, updates, deletes, gets or lists a <code>vw_spark_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_spark_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.vw_spark_configurations" /></td></tr>
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
JSON_EXTRACT(properties, '$.configs') as "configs",
JSON_EXTRACT(properties, '$.annotations') as "annotations",
JSON_EXTRACT(properties, '$.notes') as "notes",
JSON_EXTRACT(properties, '$.createdBy') as "created_by",
JSON_EXTRACT(properties, '$.created') as "created",
JSON_EXTRACT(properties, '$.configMergeRule') as "config_merge_rule",
subscriptionId,
resourceGroupName,
workspaceName,
sparkConfigurationName
FROM azure.synapse.spark_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.configs') as "configs",
json_extract_path_text(properties, '$.annotations') as "annotations",
json_extract_path_text(properties, '$.notes') as "notes",
json_extract_path_text(properties, '$.createdBy') as "created_by",
json_extract_path_text(properties, '$.created') as "created",
json_extract_path_text(properties, '$.configMergeRule') as "config_merge_rule",
subscriptionId,
resourceGroupName,
workspaceName,
sparkConfigurationName
FROM azure.synapse.spark_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
