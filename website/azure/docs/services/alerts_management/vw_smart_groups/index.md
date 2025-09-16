--- 
title: vw_smart_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_smart_groups
  - alerts_management
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

Creates, updates, deletes, gets or lists a <code>vw_smart_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_smart_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.alerts_management.vw_smart_groups" /></td></tr>
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
JSON_EXTRACT(properties, '$.alertsCount') as "alerts_count",
JSON_EXTRACT(properties, '$.smartGroupState') as "smart_group_state",
JSON_EXTRACT(properties, '$.severity') as "severity",
JSON_EXTRACT(properties, '$.startDateTime') as "start_date_time",
JSON_EXTRACT(properties, '$.lastModifiedDateTime') as "last_modified_date_time",
JSON_EXTRACT(properties, '$.lastModifiedUserName') as "last_modified_user_name",
JSON_EXTRACT(properties, '$.resources') as "resources",
JSON_EXTRACT(properties, '$.resourceTypes') as "resource_types",
JSON_EXTRACT(properties, '$.resourceGroups') as "resource_groups",
JSON_EXTRACT(properties, '$.monitorServices') as "monitor_services",
JSON_EXTRACT(properties, '$.monitorConditions') as "monitor_conditions",
JSON_EXTRACT(properties, '$.alertStates') as "alert_states",
JSON_EXTRACT(properties, '$.alertSeverities') as "alert_severities",
JSON_EXTRACT(properties, '$.nextLink') as "next_link",
subscriptionId,
smartGroupId
FROM azure.alerts_management.smart_groups
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.alertsCount') as "alerts_count",
json_extract_path_text(properties, '$.smartGroupState') as "smart_group_state",
json_extract_path_text(properties, '$.severity') as "severity",
json_extract_path_text(properties, '$.startDateTime') as "start_date_time",
json_extract_path_text(properties, '$.lastModifiedDateTime') as "last_modified_date_time",
json_extract_path_text(properties, '$.lastModifiedUserName') as "last_modified_user_name",
json_extract_path_text(properties, '$.resources') as "resources",
json_extract_path_text(properties, '$.resourceTypes') as "resource_types",
json_extract_path_text(properties, '$.resourceGroups') as "resource_groups",
json_extract_path_text(properties, '$.monitorServices') as "monitor_services",
json_extract_path_text(properties, '$.monitorConditions') as "monitor_conditions",
json_extract_path_text(properties, '$.alertStates') as "alert_states",
json_extract_path_text(properties, '$.alertSeverities') as "alert_severities",
json_extract_path_text(properties, '$.nextLink') as "next_link",
subscriptionId,
smartGroupId
FROM azure.alerts_management.smart_groups
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
