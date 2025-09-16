--- 
title: vw_watchers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_watchers
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

Creates, updates, deletes, gets or lists a <code>vw_watchers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_watchers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.vw_watchers" /></td></tr>
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
location as location,
etag as etag,
tags as tags,
type as type,
JSON_EXTRACT(properties, '$.executionFrequencyInSeconds') as "execution_frequency_in_seconds",
JSON_EXTRACT(properties, '$.scriptName') as "script_name",
JSON_EXTRACT(properties, '$.scriptParameters') as "script_parameters",
JSON_EXTRACT(properties, '$.scriptRunOn') as "script_run_on",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.lastModifiedBy') as "last_modified_by",
JSON_EXTRACT(properties, '$.description') as "description",
subscriptionId,
resourceGroupName,
automationAccountName,
watcherName
FROM azure.automation.watchers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
etag as etag,
tags as tags,
type as type,
json_extract_path_text(properties, '$.executionFrequencyInSeconds') as "execution_frequency_in_seconds",
json_extract_path_text(properties, '$.scriptName') as "script_name",
json_extract_path_text(properties, '$.scriptParameters') as "script_parameters",
json_extract_path_text(properties, '$.scriptRunOn') as "script_run_on",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.lastModifiedBy') as "last_modified_by",
json_extract_path_text(properties, '$.description') as "description",
subscriptionId,
resourceGroupName,
automationAccountName,
watcherName
FROM azure.automation.watchers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
</Tabs>
