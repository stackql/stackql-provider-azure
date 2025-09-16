--- 
title: vw_source_control_sync_jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_source_control_sync_jobs
  - automation
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

Creates, updates, deletes, gets or lists a <code>vw_source_control_sync_jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_source_control_sync_jobs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.vw_source_control_sync_jobs" /></td></tr>
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
JSON_EXTRACT(properties, '$.sourceControlSyncJobId') as "source_control_sync_job_id",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.syncType') as "sync_type",
JSON_EXTRACT(properties, '$.exception') as "exception",
subscriptionId,
resourceGroupName,
automationAccountName,
sourceControlName,
sourceControlSyncJobId
FROM azure.automation.source_control_sync_jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me' AND sourceControlName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
json_extract_path_text(properties, '$.sourceControlSyncJobId') as "source_control_sync_job_id",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.syncType') as "sync_type",
json_extract_path_text(properties, '$.exception') as "exception",
subscriptionId,
resourceGroupName,
automationAccountName,
sourceControlName,
sourceControlSyncJobId
FROM azure.automation.source_control_sync_jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me' AND sourceControlName = 'replace-me';
```

</TabItem>
</Tabs>
