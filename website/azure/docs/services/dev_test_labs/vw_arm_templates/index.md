--- 
title: vw_arm_templates
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_arm_templates
  - dev_test_labs
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

Creates, updates, deletes, gets or lists a <code>vw_arm_templates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_arm_templates</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_test_labs.vw_arm_templates" /></td></tr>
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
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.publisher') as "publisher",
JSON_EXTRACT(properties, '$.icon') as "icon",
JSON_EXTRACT(properties, '$.contents') as "contents",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.parametersValueFilesInfo') as "parameters_value_files_info",
JSON_EXTRACT(properties, '$.enabled') as "enabled",
subscriptionId,
resourceGroupName,
labName,
artifactSourceName,
name
FROM azure.dev_test_labs.arm_templates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me' AND artifactSourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.publisher') as "publisher",
json_extract_path_text(properties, '$.icon') as "icon",
json_extract_path_text(properties, '$.contents') as "contents",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.parametersValueFilesInfo') as "parameters_value_files_info",
json_extract_path_text(properties, '$.enabled') as "enabled",
subscriptionId,
resourceGroupName,
labName,
artifactSourceName,
name
FROM azure.dev_test_labs.arm_templates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me' AND artifactSourceName = 'replace-me';
```

</TabItem>
</Tabs>
