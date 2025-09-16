--- 
title: vw_artifact_sources
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_artifact_sources
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

Creates, updates, deletes, gets or lists a <code>vw_artifact_sources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_artifact_sources</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_test_labs.vw_artifact_sources" /></td></tr>
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
JSON_EXTRACT(properties, '$.uri') as "uri",
JSON_EXTRACT(properties, '$.sourceType') as "source_type",
JSON_EXTRACT(properties, '$.folderPath') as "folder_path",
JSON_EXTRACT(properties, '$.armTemplateFolderPath') as "arm_template_folder_path",
JSON_EXTRACT(properties, '$.branchRef') as "branch_ref",
JSON_EXTRACT(properties, '$.securityToken') as "security_token",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
name
FROM azure.dev_test_labs.artifact_sources
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me';
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
json_extract_path_text(properties, '$.uri') as "uri",
json_extract_path_text(properties, '$.sourceType') as "source_type",
json_extract_path_text(properties, '$.folderPath') as "folder_path",
json_extract_path_text(properties, '$.armTemplateFolderPath') as "arm_template_folder_path",
json_extract_path_text(properties, '$.branchRef') as "branch_ref",
json_extract_path_text(properties, '$.securityToken') as "security_token",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
name
FROM azure.dev_test_labs.artifact_sources
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me';
```

</TabItem>
</Tabs>
