--- 
title: vw_pipelines
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_pipelines
  - devops
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

Creates, updates, deletes, gets or lists a <code>vw_pipelines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_pipelines</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.devops.vw_pipelines" /></td></tr>
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
JSON_EXTRACT(properties, '$.pipelineId') as "pipeline_id",
JSON_EXTRACT(properties, '$.organization') as "organization",
JSON_EXTRACT(properties, '$.project') as "project",
JSON_EXTRACT(properties, '$.bootstrapConfiguration') as "bootstrap_configuration",
subscriptionId,
resourceGroupName,
pipelineName
FROM azure.devops.pipelines
WHERE subscriptionId = 'replace-me';
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
json_extract_path_text(properties, '$.pipelineId') as "pipeline_id",
json_extract_path_text(properties, '$.organization') as "organization",
json_extract_path_text(properties, '$.project') as "project",
json_extract_path_text(properties, '$.bootstrapConfiguration') as "bootstrap_configuration",
subscriptionId,
resourceGroupName,
pipelineName
FROM azure.devops.pipelines
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
