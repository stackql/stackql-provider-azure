--- 
title: vw_jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_jobs
  - media_services
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

Creates, updates, deletes, gets or lists a <code>vw_jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_jobs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.media_services.vw_jobs" /></td></tr>
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
JSON_EXTRACT(properties, '$.created') as "created",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.input') as "input",
JSON_EXTRACT(properties, '$.lastModified') as "last_modified",
JSON_EXTRACT(properties, '$.outputs') as "outputs",
JSON_EXTRACT(properties, '$.priority') as "priority",
JSON_EXTRACT(properties, '$.correlationData') as "correlation_data",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
subscriptionId,
resourceGroupName,
accountName,
transformName,
jobName
FROM azure.media_services.jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND transformName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.created') as "created",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.input') as "input",
json_extract_path_text(properties, '$.lastModified') as "last_modified",
json_extract_path_text(properties, '$.outputs') as "outputs",
json_extract_path_text(properties, '$.priority') as "priority",
json_extract_path_text(properties, '$.correlationData') as "correlation_data",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
subscriptionId,
resourceGroupName,
accountName,
transformName,
jobName
FROM azure.media_services.jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND transformName = 'replace-me';
```

</TabItem>
</Tabs>
