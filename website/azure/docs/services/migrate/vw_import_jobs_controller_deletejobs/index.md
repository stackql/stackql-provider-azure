--- 
title: vw_import_jobs_controller_deletejobs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_import_jobs_controller_deletejobs
  - migrate
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

Creates, updates, deletes, gets or lists a <code>vw_import_jobs_controller_deletejobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_import_jobs_controller_deletejobs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate.vw_import_jobs_controller_deletejobs" /></td></tr>
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
JSON_EXTRACT(properties, '$.blobName') as "blob_name",
JSON_EXTRACT(properties, '$.errorSasUri') as "error_sas_uri",
JSON_EXTRACT(properties, '$.jobState') as "job_state",
JSON_EXTRACT(properties, '$.numberOfMachinesDeleted') as "number_of_machines_deleted",
JSON_EXTRACT(properties, '$.deletionConfirmation') as "deletion_confirmation",
JSON_EXTRACT(properties, '$.errors') as "errors",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName,
jobName
FROM azure.migrate.import_jobs_controller_deletejobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.blobName') as "blob_name",
json_extract_path_text(properties, '$.errorSasUri') as "error_sas_uri",
json_extract_path_text(properties, '$.jobState') as "job_state",
json_extract_path_text(properties, '$.numberOfMachinesDeleted') as "number_of_machines_deleted",
json_extract_path_text(properties, '$.deletionConfirmation') as "deletion_confirmation",
json_extract_path_text(properties, '$.errors') as "errors",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName,
jobName
FROM azure.migrate.import_jobs_controller_deletejobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me';
```

</TabItem>
</Tabs>
