--- 
title: vw_software_update_configuration_runs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_software_update_configuration_runs
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

Creates, updates, deletes, gets or lists a <code>vw_software_update_configuration_runs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_software_update_configuration_runs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.vw_software_update_configuration_runs" /></td></tr>
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
JSON_EXTRACT(properties, '$.softwareUpdateConfiguration') as "software_update_configuration",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.configuredDuration') as "configured_duration",
JSON_EXTRACT(properties, '$.osType') as "os_type",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.computerCount') as "computer_count",
JSON_EXTRACT(properties, '$.failedCount') as "failed_count",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.createdBy') as "created_by",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.lastModifiedBy') as "last_modified_by",
JSON_EXTRACT(properties, '$.tasks') as "tasks",
subscriptionId,
resourceGroupName,
automationAccountName,
softwareUpdateConfigurationRunId
FROM azure.automation.software_update_configuration_runs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
json_extract_path_text(properties, '$.softwareUpdateConfiguration') as "software_update_configuration",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.configuredDuration') as "configured_duration",
json_extract_path_text(properties, '$.osType') as "os_type",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.computerCount') as "computer_count",
json_extract_path_text(properties, '$.failedCount') as "failed_count",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.createdBy') as "created_by",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.lastModifiedBy') as "last_modified_by",
json_extract_path_text(properties, '$.tasks') as "tasks",
subscriptionId,
resourceGroupName,
automationAccountName,
softwareUpdateConfigurationRunId
FROM azure.automation.software_update_configuration_runs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
</Tabs>
