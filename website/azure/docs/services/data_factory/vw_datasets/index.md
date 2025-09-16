--- 
title: vw_datasets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_datasets
  - data_factory
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

Creates, updates, deletes, gets or lists a <code>vw_datasets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_datasets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_factory.vw_datasets" /></td></tr>
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
type as type,
etag as etag,
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.structure') as "structure",
JSON_EXTRACT(properties, '$.schema') as "schema",
JSON_EXTRACT(properties, '$.linkedServiceName') as "linked_service_name",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
JSON_EXTRACT(properties, '$.annotations') as "annotations",
JSON_EXTRACT(properties, '$.folder') as "folder",
subscriptionId,
resourceGroupName,
factoryName,
datasetName
FROM azure.data_factory.datasets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND factoryName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
etag as etag,
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.structure') as "structure",
json_extract_path_text(properties, '$.schema') as "schema",
json_extract_path_text(properties, '$.linkedServiceName') as "linked_service_name",
json_extract_path_text(properties, '$.parameters') as "parameters",
json_extract_path_text(properties, '$.annotations') as "annotations",
json_extract_path_text(properties, '$.folder') as "folder",
subscriptionId,
resourceGroupName,
factoryName,
datasetName
FROM azure.data_factory.datasets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND factoryName = 'replace-me';
```

</TabItem>
</Tabs>
