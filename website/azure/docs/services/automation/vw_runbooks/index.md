--- 
title: vw_runbooks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_runbooks
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

Creates, updates, deletes, gets or lists a <code>vw_runbooks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_runbooks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.vw_runbooks" /></td></tr>
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
etag as etag,
tags as tags,
JSON_EXTRACT(properties, '$.runbookType') as "runbook_type",
JSON_EXTRACT(properties, '$.publishContentLink') as "publish_content_link",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.logVerbose') as "log_verbose",
JSON_EXTRACT(properties, '$.logProgress') as "log_progress",
JSON_EXTRACT(properties, '$.logActivityTrace') as "log_activity_trace",
JSON_EXTRACT(properties, '$.jobCount') as "job_count",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
JSON_EXTRACT(properties, '$.outputTypes') as "output_types",
JSON_EXTRACT(properties, '$.draft') as "draft",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.lastModifiedBy') as "last_modified_by",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.description') as "description",
subscriptionId,
resourceGroupName,
automationAccountName,
runbookName
FROM azure.automation.runbooks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
etag as etag,
tags as tags,
json_extract_path_text(properties, '$.runbookType') as "runbook_type",
json_extract_path_text(properties, '$.publishContentLink') as "publish_content_link",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.logVerbose') as "log_verbose",
json_extract_path_text(properties, '$.logProgress') as "log_progress",
json_extract_path_text(properties, '$.logActivityTrace') as "log_activity_trace",
json_extract_path_text(properties, '$.jobCount') as "job_count",
json_extract_path_text(properties, '$.parameters') as "parameters",
json_extract_path_text(properties, '$.outputTypes') as "output_types",
json_extract_path_text(properties, '$.draft') as "draft",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.lastModifiedBy') as "last_modified_by",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.description') as "description",
subscriptionId,
resourceGroupName,
automationAccountName,
runbookName
FROM azure.automation.runbooks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
</Tabs>
