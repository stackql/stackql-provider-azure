--- 
title: vw_azure_large_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_azure_large_instances
  - large_instances
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

Creates, updates, deletes, gets or lists a <code>vw_azure_large_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_azure_large_instances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.large_instances.vw_azure_large_instances" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.hardwareProfile') as "hardware_profile",
JSON_EXTRACT(properties, '$.storageProfile') as "storage_profile",
JSON_EXTRACT(properties, '$.osProfile') as "os_profile",
JSON_EXTRACT(properties, '$.networkProfile') as "network_profile",
JSON_EXTRACT(properties, '$.azureLargeInstanceId') as "azure_large_instance_id",
JSON_EXTRACT(properties, '$.powerState') as "power_state",
JSON_EXTRACT(properties, '$.proximityPlacementGroup') as "proximity_placement_group",
JSON_EXTRACT(properties, '$.hwRevision') as "hw_revision",
JSON_EXTRACT(properties, '$.partnerNodeId') as "partner_node_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
azureLargeInstanceName
FROM azure.large_instances.azure_large_instances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.hardwareProfile') as "hardware_profile",
json_extract_path_text(properties, '$.storageProfile') as "storage_profile",
json_extract_path_text(properties, '$.osProfile') as "os_profile",
json_extract_path_text(properties, '$.networkProfile') as "network_profile",
json_extract_path_text(properties, '$.azureLargeInstanceId') as "azure_large_instance_id",
json_extract_path_text(properties, '$.powerState') as "power_state",
json_extract_path_text(properties, '$.proximityPlacementGroup') as "proximity_placement_group",
json_extract_path_text(properties, '$.hwRevision') as "hw_revision",
json_extract_path_text(properties, '$.partnerNodeId') as "partner_node_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
azureLargeInstanceName
FROM azure.large_instances.azure_large_instances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
