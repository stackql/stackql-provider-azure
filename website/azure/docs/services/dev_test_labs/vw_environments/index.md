--- 
title: vw_environments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_environments
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

Creates, updates, deletes, gets or lists a <code>vw_environments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_environments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_test_labs.vw_environments" /></td></tr>
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
JSON_EXTRACT(properties, '$.deploymentProperties') as "deployment_properties",
JSON_EXTRACT(properties, '$.armTemplateDisplayName') as "arm_template_display_name",
JSON_EXTRACT(properties, '$.resourceGroupId') as "resource_group_id",
JSON_EXTRACT(properties, '$.createdByUser') as "created_by_user",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
userName,
name
FROM azure.dev_test_labs.environments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me' AND userName = 'replace-me';
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
json_extract_path_text(properties, '$.deploymentProperties') as "deployment_properties",
json_extract_path_text(properties, '$.armTemplateDisplayName') as "arm_template_display_name",
json_extract_path_text(properties, '$.resourceGroupId') as "resource_group_id",
json_extract_path_text(properties, '$.createdByUser') as "created_by_user",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
userName,
name
FROM azure.dev_test_labs.environments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me' AND userName = 'replace-me';
```

</TabItem>
</Tabs>
