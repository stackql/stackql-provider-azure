--- 
title: vw_job_streams
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_job_streams
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

Creates, updates, deletes, gets or lists a <code>vw_job_streams</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_job_streams</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.vw_job_streams" /></td></tr>
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
JSON_EXTRACT(properties, '$.jobStreamId') as "job_stream_id",
JSON_EXTRACT(properties, '$.time') as "time",
JSON_EXTRACT(properties, '$.streamType') as "stream_type",
JSON_EXTRACT(properties, '$.streamText') as "stream_text",
JSON_EXTRACT(properties, '$.summary') as "summary",
JSON_EXTRACT(properties, '$.value') as "value",
subscriptionId,
resourceGroupName,
automationAccountName,
jobName,
jobStreamId
FROM azure.automation.job_streams
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me' AND jobName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
json_extract_path_text(properties, '$.jobStreamId') as "job_stream_id",
json_extract_path_text(properties, '$.time') as "time",
json_extract_path_text(properties, '$.streamType') as "stream_type",
json_extract_path_text(properties, '$.streamText') as "stream_text",
json_extract_path_text(properties, '$.summary') as "summary",
json_extract_path_text(properties, '$.value') as "value",
subscriptionId,
resourceGroupName,
automationAccountName,
jobName,
jobStreamId
FROM azure.automation.job_streams
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me' AND jobName = 'replace-me';
```

</TabItem>
</Tabs>
