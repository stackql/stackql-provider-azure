--- 
title: vw_outputs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_outputs
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

Creates, updates, deletes, gets or lists a <code>vw_outputs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_outputs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.stream_analytics.vw_outputs" /></td></tr>
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
JSON_EXTRACT(properties, '$.datasource') as "datasource",
JSON_EXTRACT(properties, '$.timeWindow') as "time_window",
JSON_EXTRACT(properties, '$.sizeWindow') as "size_window",
JSON_EXTRACT(properties, '$.serialization') as "serialization",
JSON_EXTRACT(properties, '$.diagnostics') as "diagnostics",
JSON_EXTRACT(properties, '$.etag') as "etag",
subscriptionId,
resourceGroupName,
jobName,
outputName
FROM azure.stream_analytics.outputs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND jobName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.datasource') as "datasource",
json_extract_path_text(properties, '$.timeWindow') as "time_window",
json_extract_path_text(properties, '$.sizeWindow') as "size_window",
json_extract_path_text(properties, '$.serialization') as "serialization",
json_extract_path_text(properties, '$.diagnostics') as "diagnostics",
json_extract_path_text(properties, '$.etag') as "etag",
subscriptionId,
resourceGroupName,
jobName,
outputName
FROM azure.stream_analytics.outputs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND jobName = 'replace-me';
```

</TabItem>
</Tabs>
