--- 
title: vw_batch_deployments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_batch_deployments
  - ml_services
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

Creates, updates, deletes, gets or lists a <code>vw_batch_deployments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_batch_deployments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.vw_batch_deployments" /></td></tr>
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
identity as identity,
kind as kind,
sku as sku,
JSON_EXTRACT(properties, '$.codeConfiguration') as "code_configuration",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.environmentId') as "environment_id",
JSON_EXTRACT(properties, '$.environmentVariables') as "environment_variables",
JSON_EXTRACT(properties, '$.properties') as "properties",
JSON_EXTRACT(properties, '$.compute') as "compute",
JSON_EXTRACT(properties, '$.deploymentConfiguration') as "deployment_configuration",
JSON_EXTRACT(properties, '$.errorThreshold') as "error_threshold",
JSON_EXTRACT(properties, '$.loggingLevel') as "logging_level",
JSON_EXTRACT(properties, '$.maxConcurrencyPerInstance') as "max_concurrency_per_instance",
JSON_EXTRACT(properties, '$.miniBatchSize') as "mini_batch_size",
JSON_EXTRACT(properties, '$.model') as "model",
JSON_EXTRACT(properties, '$.outputAction') as "output_action",
JSON_EXTRACT(properties, '$.outputFileName') as "output_file_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.resources') as "resources",
JSON_EXTRACT(properties, '$.retrySettings') as "retry_settings",
subscriptionId,
resourceGroupName,
workspaceName,
endpointName,
deploymentName
FROM azure.ml_services.batch_deployments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND endpointName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
kind as kind,
sku as sku,
json_extract_path_text(properties, '$.codeConfiguration') as "code_configuration",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.environmentId') as "environment_id",
json_extract_path_text(properties, '$.environmentVariables') as "environment_variables",
json_extract_path_text(properties, '$.properties') as "properties",
json_extract_path_text(properties, '$.compute') as "compute",
json_extract_path_text(properties, '$.deploymentConfiguration') as "deployment_configuration",
json_extract_path_text(properties, '$.errorThreshold') as "error_threshold",
json_extract_path_text(properties, '$.loggingLevel') as "logging_level",
json_extract_path_text(properties, '$.maxConcurrencyPerInstance') as "max_concurrency_per_instance",
json_extract_path_text(properties, '$.miniBatchSize') as "mini_batch_size",
json_extract_path_text(properties, '$.model') as "model",
json_extract_path_text(properties, '$.outputAction') as "output_action",
json_extract_path_text(properties, '$.outputFileName') as "output_file_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resources') as "resources",
json_extract_path_text(properties, '$.retrySettings') as "retry_settings",
subscriptionId,
resourceGroupName,
workspaceName,
endpointName,
deploymentName
FROM azure.ml_services.batch_deployments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND endpointName = 'replace-me';
```

</TabItem>
</Tabs>
