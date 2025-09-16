--- 
title: vw_incident_tasks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_incident_tasks
  - sentinel
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

Creates, updates, deletes, gets or lists a <code>vw_incident_tasks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_incident_tasks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sentinel.vw_incident_tasks" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.title') as "title",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.createdTimeUtc') as "created_time_utc",
JSON_EXTRACT(properties, '$.lastModifiedTimeUtc') as "last_modified_time_utc",
JSON_EXTRACT(properties, '$.createdBy') as "created_by",
JSON_EXTRACT(properties, '$.lastModifiedBy') as "last_modified_by",
subscriptionId,
resourceGroupName,
workspaceName,
incidentId,
incidentTaskId
FROM azure.sentinel.incident_tasks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND incidentId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
json_extract_path_text(properties, '$.title') as "title",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.createdTimeUtc') as "created_time_utc",
json_extract_path_text(properties, '$.lastModifiedTimeUtc') as "last_modified_time_utc",
json_extract_path_text(properties, '$.createdBy') as "created_by",
json_extract_path_text(properties, '$.lastModifiedBy') as "last_modified_by",
subscriptionId,
resourceGroupName,
workspaceName,
incidentId,
incidentTaskId
FROM azure.sentinel.incident_tasks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND incidentId = 'replace-me';
```

</TabItem>
</Tabs>
