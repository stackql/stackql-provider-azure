--- 
title: vw_shares
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_shares
  - data_box_edge
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

Creates, updates, deletes, gets or lists a <code>vw_shares</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_shares</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_box_edge.vw_shares" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.shareStatus') as "share_status",
JSON_EXTRACT(properties, '$.monitoringStatus') as "monitoring_status",
JSON_EXTRACT(properties, '$.azureContainerInfo') as "azure_container_info",
JSON_EXTRACT(properties, '$.accessProtocol') as "access_protocol",
JSON_EXTRACT(properties, '$.userAccessRights') as "user_access_rights",
JSON_EXTRACT(properties, '$.clientAccessRights') as "client_access_rights",
JSON_EXTRACT(properties, '$.refreshDetails') as "refresh_details",
JSON_EXTRACT(properties, '$.shareMappings') as "share_mappings",
JSON_EXTRACT(properties, '$.dataPolicy') as "data_policy",
subscriptionId,
resourceGroupName,
deviceName,
name
FROM azure.data_box_edge.shares
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.shareStatus') as "share_status",
json_extract_path_text(properties, '$.monitoringStatus') as "monitoring_status",
json_extract_path_text(properties, '$.azureContainerInfo') as "azure_container_info",
json_extract_path_text(properties, '$.accessProtocol') as "access_protocol",
json_extract_path_text(properties, '$.userAccessRights') as "user_access_rights",
json_extract_path_text(properties, '$.clientAccessRights') as "client_access_rights",
json_extract_path_text(properties, '$.refreshDetails') as "refresh_details",
json_extract_path_text(properties, '$.shareMappings') as "share_mappings",
json_extract_path_text(properties, '$.dataPolicy') as "data_policy",
subscriptionId,
resourceGroupName,
deviceName,
name
FROM azure.data_box_edge.shares
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
</Tabs>
