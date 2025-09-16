--- 
title: vw_virtual_machine_run_commands
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_machine_run_commands
  - compute
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_machine_run_commands</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_machine_run_commands</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_virtual_machine_run_commands" /></td></tr>
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
JSON_EXTRACT(properties, '$.source') as "source",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
JSON_EXTRACT(properties, '$.protectedParameters') as "protected_parameters",
JSON_EXTRACT(properties, '$.asyncExecution') as "async_execution",
JSON_EXTRACT(properties, '$.runAsUser') as "run_as_user",
JSON_EXTRACT(properties, '$.runAsPassword') as "run_as_password",
JSON_EXTRACT(properties, '$.timeoutInSeconds') as "timeout_in_seconds",
JSON_EXTRACT(properties, '$.outputBlobUri') as "output_blob_uri",
JSON_EXTRACT(properties, '$.errorBlobUri') as "error_blob_uri",
JSON_EXTRACT(properties, '$.outputBlobManagedIdentity') as "output_blob_managed_identity",
JSON_EXTRACT(properties, '$.errorBlobManagedIdentity') as "error_blob_managed_identity",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.instanceView') as "instance_view",
JSON_EXTRACT(properties, '$.treatFailureAsDeploymentFailure') as "treat_failure_as_deployment_failure",
subscriptionId,
resourceGroupName,
vmName,
runCommandName,
location
FROM azure.compute.virtual_machine_run_commands
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
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
json_extract_path_text(properties, '$.source') as "source",
json_extract_path_text(properties, '$.parameters') as "parameters",
json_extract_path_text(properties, '$.protectedParameters') as "protected_parameters",
json_extract_path_text(properties, '$.asyncExecution') as "async_execution",
json_extract_path_text(properties, '$.runAsUser') as "run_as_user",
json_extract_path_text(properties, '$.runAsPassword') as "run_as_password",
json_extract_path_text(properties, '$.timeoutInSeconds') as "timeout_in_seconds",
json_extract_path_text(properties, '$.outputBlobUri') as "output_blob_uri",
json_extract_path_text(properties, '$.errorBlobUri') as "error_blob_uri",
json_extract_path_text(properties, '$.outputBlobManagedIdentity') as "output_blob_managed_identity",
json_extract_path_text(properties, '$.errorBlobManagedIdentity') as "error_blob_managed_identity",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.instanceView') as "instance_view",
json_extract_path_text(properties, '$.treatFailureAsDeploymentFailure') as "treat_failure_as_deployment_failure",
subscriptionId,
resourceGroupName,
vmName,
runCommandName,
location
FROM azure.compute.virtual_machine_run_commands
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
