--- 
title: vw_job_details
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_job_details
  - recovery_services_backup
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

Creates, updates, deletes, gets or lists a <code>vw_job_details</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_job_details</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_backup.vw_job_details" /></td></tr>
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
JSON_EXTRACT(properties, '$.entityFriendlyName') as "entity_friendly_name",
JSON_EXTRACT(properties, '$.backupManagementType') as "backup_management_type",
JSON_EXTRACT(properties, '$.operation') as "operation",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.activityId') as "activity_id",
JSON_EXTRACT(properties, '$.jobType') as "job_type",
subscriptionId,
resourceGroupName,
vaultName,
jobName
FROM azure.recovery_services_backup.job_details
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me' AND jobName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.entityFriendlyName') as "entity_friendly_name",
json_extract_path_text(properties, '$.backupManagementType') as "backup_management_type",
json_extract_path_text(properties, '$.operation') as "operation",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.activityId') as "activity_id",
json_extract_path_text(properties, '$.jobType') as "job_type",
subscriptionId,
resourceGroupName,
vaultName,
jobName
FROM azure.recovery_services_backup.job_details
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me' AND jobName = 'replace-me';
```

</TabItem>
</Tabs>
