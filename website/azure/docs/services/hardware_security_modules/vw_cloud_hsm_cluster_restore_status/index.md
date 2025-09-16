--- 
title: vw_cloud_hsm_cluster_restore_status
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_cloud_hsm_cluster_restore_status
  - hardware_security_modules
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

Creates, updates, deletes, gets or lists a <code>vw_cloud_hsm_cluster_restore_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_cloud_hsm_cluster_restore_status</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hardware_security_modules.vw_cloud_hsm_cluster_restore_status" /></td></tr>
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
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.statusDetails') as "status_details",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.jobId') as "job_id",
subscriptionId,
resourceGroupName,
cloudHsmClusterName,
jobId
FROM azure.hardware_security_modules.cloud_hsm_cluster_restore_status
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND cloudHsmClusterName = 'replace-me' AND jobId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.statusDetails') as "status_details",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.jobId') as "job_id",
subscriptionId,
resourceGroupName,
cloudHsmClusterName,
jobId
FROM azure.hardware_security_modules.cloud_hsm_cluster_restore_status
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND cloudHsmClusterName = 'replace-me' AND jobId = 'replace-me';
```

</TabItem>
</Tabs>
