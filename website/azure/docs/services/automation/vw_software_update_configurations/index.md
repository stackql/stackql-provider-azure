--- 
title: vw_software_update_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_software_update_configurations
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

Creates, updates, deletes, gets or lists a <code>vw_software_update_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_software_update_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.vw_software_update_configurations" /></td></tr>
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
type as type,
JSON_EXTRACT(properties, '$.updateConfiguration') as "update_configuration",
JSON_EXTRACT(properties, '$.scheduleInfo') as "schedule_info",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.createdBy') as "created_by",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.lastModifiedBy') as "last_modified_by",
JSON_EXTRACT(properties, '$.tasks') as "tasks",
subscriptionId,
resourceGroupName,
automationAccountName,
softwareUpdateConfigurationName
FROM azure.automation.software_update_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.updateConfiguration') as "update_configuration",
json_extract_path_text(properties, '$.scheduleInfo') as "schedule_info",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.createdBy') as "created_by",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.lastModifiedBy') as "last_modified_by",
json_extract_path_text(properties, '$.tasks') as "tasks",
subscriptionId,
resourceGroupName,
automationAccountName,
softwareUpdateConfigurationName
FROM azure.automation.software_update_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
</Tabs>
