--- 
title: vw_connectivity_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_connectivity_configurations
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_connectivity_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_connectivity_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_connectivity_configurations" /></td></tr>
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
systemData as system_data,
type as type,
etag as etag,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.connectivityTopology') as "connectivity_topology",
JSON_EXTRACT(properties, '$.hubs') as "hubs",
JSON_EXTRACT(properties, '$.isGlobal') as "is_global",
JSON_EXTRACT(properties, '$.appliesToGroups') as "applies_to_groups",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.deleteExistingPeering') as "delete_existing_peering",
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
subscriptionId,
resourceGroupName,
networkManagerName,
configurationName
FROM azure.network.connectivity_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkManagerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
systemData as system_data,
type as type,
etag as etag,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.connectivityTopology') as "connectivity_topology",
json_extract_path_text(properties, '$.hubs') as "hubs",
json_extract_path_text(properties, '$.isGlobal') as "is_global",
json_extract_path_text(properties, '$.appliesToGroups') as "applies_to_groups",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.deleteExistingPeering') as "delete_existing_peering",
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
subscriptionId,
resourceGroupName,
networkManagerName,
configurationName
FROM azure.network.connectivity_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkManagerName = 'replace-me';
```

</TabItem>
</Tabs>
