--- 
title: vw_monitors
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_monitors
  - sap_workloads
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_monitors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_monitors</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.sap_workloads.vw_monitors" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.errors') as "errors",
JSON_EXTRACT(properties, '$.appLocation') as "app_location",
JSON_EXTRACT(properties, '$.routingPreference') as "routing_preference",
JSON_EXTRACT(properties, '$.zoneRedundancyPreference') as "zone_redundancy_preference",
JSON_EXTRACT(properties, '$.managedResourceGroupConfiguration') as "managed_resource_group_configuration",
JSON_EXTRACT(properties, '$.logAnalyticsWorkspaceArmId') as "log_analytics_workspace_arm_id",
JSON_EXTRACT(properties, '$.monitorSubnet') as "monitor_subnet",
JSON_EXTRACT(properties, '$.msiArmId') as "msi_arm_id",
JSON_EXTRACT(properties, '$.storageAccountArmId') as "storage_account_arm_id",
subscriptionId,
resourceGroupName,
monitorName
FROM azure_isv.sap_workloads.monitors
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.errors') as "errors",
json_extract_path_text(properties, '$.appLocation') as "app_location",
json_extract_path_text(properties, '$.routingPreference') as "routing_preference",
json_extract_path_text(properties, '$.zoneRedundancyPreference') as "zone_redundancy_preference",
json_extract_path_text(properties, '$.managedResourceGroupConfiguration') as "managed_resource_group_configuration",
json_extract_path_text(properties, '$.logAnalyticsWorkspaceArmId') as "log_analytics_workspace_arm_id",
json_extract_path_text(properties, '$.monitorSubnet') as "monitor_subnet",
json_extract_path_text(properties, '$.msiArmId') as "msi_arm_id",
json_extract_path_text(properties, '$.storageAccountArmId') as "storage_account_arm_id",
subscriptionId,
resourceGroupName,
monitorName
FROM azure_isv.sap_workloads.monitors
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
