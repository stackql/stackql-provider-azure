--- 
title: vw_deployments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_deployments
  - resources
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

Creates, updates, deletes, gets or lists a <code>vw_deployments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_deployments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.resources.vw_deployments" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.correlationId') as "correlation_id",
JSON_EXTRACT(properties, '$.timestamp') as "timestamp",
JSON_EXTRACT(properties, '$.duration') as "duration",
JSON_EXTRACT(properties, '$.outputs') as "outputs",
JSON_EXTRACT(properties, '$.providers') as "providers",
JSON_EXTRACT(properties, '$.dependencies') as "dependencies",
JSON_EXTRACT(properties, '$.templateLink') as "template_link",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
JSON_EXTRACT(properties, '$.parametersLink') as "parameters_link",
JSON_EXTRACT(properties, '$.mode') as "mode",
JSON_EXTRACT(properties, '$.debugSetting') as "debug_setting",
JSON_EXTRACT(properties, '$.onErrorDeployment') as "on_error_deployment",
JSON_EXTRACT(properties, '$.templateHash') as "template_hash",
JSON_EXTRACT(properties, '$.outputResources') as "output_resources",
JSON_EXTRACT(properties, '$.validatedResources') as "validated_resources",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.diagnostics') as "diagnostics",
subscriptionId,
resourceGroupName,
deploymentName
FROM azure.resources.deployments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me';
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
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.correlationId') as "correlation_id",
json_extract_path_text(properties, '$.timestamp') as "timestamp",
json_extract_path_text(properties, '$.duration') as "duration",
json_extract_path_text(properties, '$.outputs') as "outputs",
json_extract_path_text(properties, '$.providers') as "providers",
json_extract_path_text(properties, '$.dependencies') as "dependencies",
json_extract_path_text(properties, '$.templateLink') as "template_link",
json_extract_path_text(properties, '$.parameters') as "parameters",
json_extract_path_text(properties, '$.parametersLink') as "parameters_link",
json_extract_path_text(properties, '$.mode') as "mode",
json_extract_path_text(properties, '$.debugSetting') as "debug_setting",
json_extract_path_text(properties, '$.onErrorDeployment') as "on_error_deployment",
json_extract_path_text(properties, '$.templateHash') as "template_hash",
json_extract_path_text(properties, '$.outputResources') as "output_resources",
json_extract_path_text(properties, '$.validatedResources') as "validated_resources",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.diagnostics') as "diagnostics",
subscriptionId,
resourceGroupName,
deploymentName
FROM azure.resources.deployments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me';
```

</TabItem>
</Tabs>
