--- 
title: vw_source_controls
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_source_controls
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

Creates, updates, deletes, gets or lists a <code>vw_source_controls</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_source_controls</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.vw_source_controls" /></td></tr>
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
JSON_EXTRACT(properties, '$.repoUrl') as "repo_url",
JSON_EXTRACT(properties, '$.branch') as "branch",
JSON_EXTRACT(properties, '$.folderPath') as "folder_path",
JSON_EXTRACT(properties, '$.autoSync') as "auto_sync",
JSON_EXTRACT(properties, '$.publishRunbook') as "publish_runbook",
JSON_EXTRACT(properties, '$.sourceType') as "source_type",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
subscriptionId,
resourceGroupName,
automationAccountName,
sourceControlName
FROM azure.automation.source_controls
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.repoUrl') as "repo_url",
json_extract_path_text(properties, '$.branch') as "branch",
json_extract_path_text(properties, '$.folderPath') as "folder_path",
json_extract_path_text(properties, '$.autoSync') as "auto_sync",
json_extract_path_text(properties, '$.publishRunbook') as "publish_runbook",
json_extract_path_text(properties, '$.sourceType') as "source_type",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
subscriptionId,
resourceGroupName,
automationAccountName,
sourceControlName
FROM azure.automation.source_controls
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
</Tabs>
