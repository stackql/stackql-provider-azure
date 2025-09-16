--- 
title: vw_workflows
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workflows
  - developer_hub
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_workflows</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workflows</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.developer_hub.vw_workflows" /></td></tr>
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
location as location,
tags as tags,
JSON_EXTRACT(properties, '$.githubWorkflowProfile') as "github_workflow_profile",
JSON_EXTRACT(properties, '$.artifactGenerationProperties') as "artifact_generation_properties",
JSON_EXTRACT(properties, '$.azurePipelineProfile') as "azure_pipeline_profile",
subscriptionId,
resourceGroupName,
workflowName
FROM azure_extras.developer_hub.workflows
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.githubWorkflowProfile') as "github_workflow_profile",
json_extract_path_text(properties, '$.artifactGenerationProperties') as "artifact_generation_properties",
json_extract_path_text(properties, '$.azurePipelineProfile') as "azure_pipeline_profile",
subscriptionId,
resourceGroupName,
workflowName
FROM azure_extras.developer_hub.workflows
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
