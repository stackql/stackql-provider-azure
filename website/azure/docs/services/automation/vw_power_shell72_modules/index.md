--- 
title: vw_power_shell72_modules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_power_shell72_modules
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

Creates, updates, deletes, gets or lists a <code>vw_power_shell72_modules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_power_shell72_modules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.vw_power_shell72_modules" /></td></tr>
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
JSON_EXTRACT(properties, '$.isGlobal') as "is_global",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.sizeInBytes') as "size_in_bytes",
JSON_EXTRACT(properties, '$.activityCount') as "activity_count",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.contentLink') as "content_link",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.isComposite') as "is_composite",
subscriptionId,
resourceGroupName,
automationAccountName,
moduleName
FROM azure.automation.power_shell72_modules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
etag as etag,
tags as tags,
json_extract_path_text(properties, '$.isGlobal') as "is_global",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.sizeInBytes') as "size_in_bytes",
json_extract_path_text(properties, '$.activityCount') as "activity_count",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.contentLink') as "content_link",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.isComposite') as "is_composite",
subscriptionId,
resourceGroupName,
automationAccountName,
moduleName
FROM azure.automation.power_shell72_modules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
</Tabs>
