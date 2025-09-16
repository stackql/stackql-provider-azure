--- 
title: vw_virtual_machine_image_templates
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_machine_image_templates
  - image_builder
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_machine_image_templates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_machine_image_templates</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.image_builder.vw_virtual_machine_image_templates" /></td></tr>
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
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.source') as "source",
JSON_EXTRACT(properties, '$.customize') as "customize",
JSON_EXTRACT(properties, '$.optimize') as "optimize",
JSON_EXTRACT(properties, '$.validate') as "validate",
JSON_EXTRACT(properties, '$.distribute') as "distribute",
JSON_EXTRACT(properties, '$.errorHandling') as "error_handling",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.provisioningError') as "provisioning_error",
JSON_EXTRACT(properties, '$.lastRunStatus') as "last_run_status",
JSON_EXTRACT(properties, '$.buildTimeoutInMinutes') as "build_timeout_in_minutes",
JSON_EXTRACT(properties, '$.vmProfile') as "vm_profile",
JSON_EXTRACT(properties, '$.stagingResourceGroup') as "staging_resource_group",
JSON_EXTRACT(properties, '$.exactStagingResourceGroup') as "exact_staging_resource_group",
JSON_EXTRACT(properties, '$.autoRun') as "auto_run",
JSON_EXTRACT(properties, '$.managedResourceTags') as "managed_resource_tags",
subscriptionId,
resourceGroupName,
imageTemplateName
FROM azure.image_builder.virtual_machine_image_templates
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.source') as "source",
json_extract_path_text(properties, '$.customize') as "customize",
json_extract_path_text(properties, '$.optimize') as "optimize",
json_extract_path_text(properties, '$.validate') as "validate",
json_extract_path_text(properties, '$.distribute') as "distribute",
json_extract_path_text(properties, '$.errorHandling') as "error_handling",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.provisioningError') as "provisioning_error",
json_extract_path_text(properties, '$.lastRunStatus') as "last_run_status",
json_extract_path_text(properties, '$.buildTimeoutInMinutes') as "build_timeout_in_minutes",
json_extract_path_text(properties, '$.vmProfile') as "vm_profile",
json_extract_path_text(properties, '$.stagingResourceGroup') as "staging_resource_group",
json_extract_path_text(properties, '$.exactStagingResourceGroup') as "exact_staging_resource_group",
json_extract_path_text(properties, '$.autoRun') as "auto_run",
json_extract_path_text(properties, '$.managedResourceTags') as "managed_resource_tags",
subscriptionId,
resourceGroupName,
imageTemplateName
FROM azure.image_builder.virtual_machine_image_templates
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
