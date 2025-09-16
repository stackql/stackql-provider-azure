--- 
title: vw_replication_network_mappings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replication_network_mappings
  - recovery_services_site_recovery
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

Creates, updates, deletes, gets or lists a <code>vw_replication_network_mappings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replication_network_mappings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.vw_replication_network_mappings" /></td></tr>
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
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.primaryNetworkFriendlyName') as "primary_network_friendly_name",
JSON_EXTRACT(properties, '$.primaryNetworkId') as "primary_network_id",
JSON_EXTRACT(properties, '$.primaryFabricFriendlyName') as "primary_fabric_friendly_name",
JSON_EXTRACT(properties, '$.recoveryNetworkFriendlyName') as "recovery_network_friendly_name",
JSON_EXTRACT(properties, '$.recoveryNetworkId') as "recovery_network_id",
JSON_EXTRACT(properties, '$.recoveryFabricArmId') as "recovery_fabric_arm_id",
JSON_EXTRACT(properties, '$.recoveryFabricFriendlyName') as "recovery_fabric_friendly_name",
JSON_EXTRACT(properties, '$.fabricSpecificSettings') as "fabric_specific_settings",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
networkName,
networkMappingName
FROM azure.recovery_services_site_recovery.replication_network_mappings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.primaryNetworkFriendlyName') as "primary_network_friendly_name",
json_extract_path_text(properties, '$.primaryNetworkId') as "primary_network_id",
json_extract_path_text(properties, '$.primaryFabricFriendlyName') as "primary_fabric_friendly_name",
json_extract_path_text(properties, '$.recoveryNetworkFriendlyName') as "recovery_network_friendly_name",
json_extract_path_text(properties, '$.recoveryNetworkId') as "recovery_network_id",
json_extract_path_text(properties, '$.recoveryFabricArmId') as "recovery_fabric_arm_id",
json_extract_path_text(properties, '$.recoveryFabricFriendlyName') as "recovery_fabric_friendly_name",
json_extract_path_text(properties, '$.fabricSpecificSettings') as "fabric_specific_settings",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
networkName,
networkMappingName
FROM azure.recovery_services_site_recovery.replication_network_mappings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
