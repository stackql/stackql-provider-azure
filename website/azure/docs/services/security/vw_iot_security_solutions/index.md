--- 
title: vw_iot_security_solutions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_iot_security_solutions
  - security
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

Creates, updates, deletes, gets or lists a <code>vw_iot_security_solutions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_iot_security_solutions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_iot_security_solutions" /></td></tr>
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
systemData as system_data,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.workspace') as "workspace",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.export') as "export",
JSON_EXTRACT(properties, '$.disabledDataSources') as "disabled_data_sources",
JSON_EXTRACT(properties, '$.iotHubs') as "iot_hubs",
JSON_EXTRACT(properties, '$.userDefinedResources') as "user_defined_resources",
JSON_EXTRACT(properties, '$.autoDiscoveredResources') as "auto_discovered_resources",
JSON_EXTRACT(properties, '$.recommendationsConfiguration') as "recommendations_configuration",
JSON_EXTRACT(properties, '$.unmaskedIpLoggingStatus') as "unmasked_ip_logging_status",
JSON_EXTRACT(properties, '$.additionalWorkspaces') as "additional_workspaces",
subscriptionId,
resourceGroupName,
solutionName
FROM azure.security.iot_security_solutions
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
systemData as system_data,
type as type,
tags as tags,
json_extract_path_text(properties, '$.workspace') as "workspace",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.export') as "export",
json_extract_path_text(properties, '$.disabledDataSources') as "disabled_data_sources",
json_extract_path_text(properties, '$.iotHubs') as "iot_hubs",
json_extract_path_text(properties, '$.userDefinedResources') as "user_defined_resources",
json_extract_path_text(properties, '$.autoDiscoveredResources') as "auto_discovered_resources",
json_extract_path_text(properties, '$.recommendationsConfiguration') as "recommendations_configuration",
json_extract_path_text(properties, '$.unmaskedIpLoggingStatus') as "unmasked_ip_logging_status",
json_extract_path_text(properties, '$.additionalWorkspaces') as "additional_workspaces",
subscriptionId,
resourceGroupName,
solutionName
FROM azure.security.iot_security_solutions
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
