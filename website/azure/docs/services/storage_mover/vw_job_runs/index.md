--- 
title: vw_job_runs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_job_runs
  - storage_mover
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

Creates, updates, deletes, gets or lists a <code>vw_job_runs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_job_runs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_mover.vw_job_runs" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.scanStatus') as "scan_status",
JSON_EXTRACT(properties, '$.agentName') as "agent_name",
JSON_EXTRACT(properties, '$.agentResourceId') as "agent_resource_id",
JSON_EXTRACT(properties, '$.executionStartTime') as "execution_start_time",
JSON_EXTRACT(properties, '$.executionEndTime') as "execution_end_time",
JSON_EXTRACT(properties, '$.lastStatusUpdate') as "last_status_update",
JSON_EXTRACT(properties, '$.itemsScanned') as "items_scanned",
JSON_EXTRACT(properties, '$.itemsExcluded') as "items_excluded",
JSON_EXTRACT(properties, '$.itemsUnsupported') as "items_unsupported",
JSON_EXTRACT(properties, '$.itemsNoTransferNeeded') as "items_no_transfer_needed",
JSON_EXTRACT(properties, '$.itemsFailed') as "items_failed",
JSON_EXTRACT(properties, '$.itemsTransferred') as "items_transferred",
JSON_EXTRACT(properties, '$.bytesScanned') as "bytes_scanned",
JSON_EXTRACT(properties, '$.bytesExcluded') as "bytes_excluded",
JSON_EXTRACT(properties, '$.bytesUnsupported') as "bytes_unsupported",
JSON_EXTRACT(properties, '$.bytesNoTransferNeeded') as "bytes_no_transfer_needed",
JSON_EXTRACT(properties, '$.bytesFailed') as "bytes_failed",
JSON_EXTRACT(properties, '$.bytesTransferred') as "bytes_transferred",
JSON_EXTRACT(properties, '$.sourceName') as "source_name",
JSON_EXTRACT(properties, '$.sourceResourceId') as "source_resource_id",
JSON_EXTRACT(properties, '$.sourceProperties') as "source_properties",
JSON_EXTRACT(properties, '$.targetName') as "target_name",
JSON_EXTRACT(properties, '$.targetResourceId') as "target_resource_id",
JSON_EXTRACT(properties, '$.targetProperties') as "target_properties",
JSON_EXTRACT(properties, '$.jobDefinitionProperties') as "job_definition_properties",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
storageMoverName,
projectName,
jobDefinitionName,
jobRunName
FROM azure.storage_mover.job_runs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND storageMoverName = 'replace-me' AND projectName = 'replace-me' AND jobDefinitionName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.scanStatus') as "scan_status",
json_extract_path_text(properties, '$.agentName') as "agent_name",
json_extract_path_text(properties, '$.agentResourceId') as "agent_resource_id",
json_extract_path_text(properties, '$.executionStartTime') as "execution_start_time",
json_extract_path_text(properties, '$.executionEndTime') as "execution_end_time",
json_extract_path_text(properties, '$.lastStatusUpdate') as "last_status_update",
json_extract_path_text(properties, '$.itemsScanned') as "items_scanned",
json_extract_path_text(properties, '$.itemsExcluded') as "items_excluded",
json_extract_path_text(properties, '$.itemsUnsupported') as "items_unsupported",
json_extract_path_text(properties, '$.itemsNoTransferNeeded') as "items_no_transfer_needed",
json_extract_path_text(properties, '$.itemsFailed') as "items_failed",
json_extract_path_text(properties, '$.itemsTransferred') as "items_transferred",
json_extract_path_text(properties, '$.bytesScanned') as "bytes_scanned",
json_extract_path_text(properties, '$.bytesExcluded') as "bytes_excluded",
json_extract_path_text(properties, '$.bytesUnsupported') as "bytes_unsupported",
json_extract_path_text(properties, '$.bytesNoTransferNeeded') as "bytes_no_transfer_needed",
json_extract_path_text(properties, '$.bytesFailed') as "bytes_failed",
json_extract_path_text(properties, '$.bytesTransferred') as "bytes_transferred",
json_extract_path_text(properties, '$.sourceName') as "source_name",
json_extract_path_text(properties, '$.sourceResourceId') as "source_resource_id",
json_extract_path_text(properties, '$.sourceProperties') as "source_properties",
json_extract_path_text(properties, '$.targetName') as "target_name",
json_extract_path_text(properties, '$.targetResourceId') as "target_resource_id",
json_extract_path_text(properties, '$.targetProperties') as "target_properties",
json_extract_path_text(properties, '$.jobDefinitionProperties') as "job_definition_properties",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
storageMoverName,
projectName,
jobDefinitionName,
jobRunName
FROM azure.storage_mover.job_runs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND storageMoverName = 'replace-me' AND projectName = 'replace-me' AND jobDefinitionName = 'replace-me';
```

</TabItem>
</Tabs>
