--- 
title: vw_hcrp_reports
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_hcrp_reports
  - automanage
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

Creates, updates, deletes, gets or lists a <code>vw_hcrp_reports</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_hcrp_reports</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automanage.vw_hcrp_reports" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.duration') as "duration",
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.configurationProfile') as "configuration_profile",
JSON_EXTRACT(properties, '$.resources') as "resources",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.reportFormatVersion') as "report_format_version",
subscriptionId,
resourceGroupName,
machineName,
configurationProfileAssignmentName,
reportName
FROM azure.automanage.hcrp_reports
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND machineName = 'replace-me' AND configurationProfileAssignmentName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.duration') as "duration",
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.configurationProfile') as "configuration_profile",
json_extract_path_text(properties, '$.resources') as "resources",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.reportFormatVersion') as "report_format_version",
subscriptionId,
resourceGroupName,
machineName,
configurationProfileAssignmentName,
reportName
FROM azure.automanage.hcrp_reports
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND machineName = 'replace-me' AND configurationProfileAssignmentName = 'replace-me';
```

</TabItem>
</Tabs>
