--- 
title: vw_transformations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_transformations
  - stream_analytics
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

Creates, updates, deletes, gets or lists a <code>vw_transformations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_transformations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.stream_analytics.vw_transformations" /></td></tr>
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
JSON_EXTRACT(properties, '$.streamingUnits') as "streaming_units",
JSON_EXTRACT(properties, '$.validStreamingUnits') as "valid_streaming_units",
JSON_EXTRACT(properties, '$.query') as "query",
JSON_EXTRACT(properties, '$.etag') as "etag",
subscriptionId,
resourceGroupName,
jobName,
transformationName
FROM azure.stream_analytics.transformations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND jobName = 'replace-me' AND transformationName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.streamingUnits') as "streaming_units",
json_extract_path_text(properties, '$.validStreamingUnits') as "valid_streaming_units",
json_extract_path_text(properties, '$.query') as "query",
json_extract_path_text(properties, '$.etag') as "etag",
subscriptionId,
resourceGroupName,
jobName,
transformationName
FROM azure.stream_analytics.transformations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND jobName = 'replace-me' AND transformationName = 'replace-me';
```

</TabItem>
</Tabs>
