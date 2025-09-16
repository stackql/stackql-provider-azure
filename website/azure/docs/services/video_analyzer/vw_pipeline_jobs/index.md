--- 
title: vw_pipeline_jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_pipeline_jobs
  - video_analyzer
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

Creates, updates, deletes, gets or lists a <code>vw_pipeline_jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_pipeline_jobs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.video_analyzer.vw_pipeline_jobs" /></td></tr>
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
JSON_EXTRACT(properties, '$.topologyName') as "topology_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.expiration') as "expiration",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
subscriptionId,
resourceGroupName,
accountName,
pipelineJobName
FROM azure.video_analyzer.pipeline_jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.topologyName') as "topology_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.expiration') as "expiration",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.parameters') as "parameters",
subscriptionId,
resourceGroupName,
accountName,
pipelineJobName
FROM azure.video_analyzer.pipeline_jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
