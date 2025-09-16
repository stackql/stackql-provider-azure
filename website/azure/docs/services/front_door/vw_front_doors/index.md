--- 
title: vw_front_doors
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_front_doors
  - front_door
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

Creates, updates, deletes, gets or lists a <code>vw_front_doors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_front_doors</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.front_door.vw_front_doors" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.routingRules') as "routing_rules",
JSON_EXTRACT(properties, '$.loadBalancingSettings') as "load_balancing_settings",
JSON_EXTRACT(properties, '$.healthProbeSettings') as "health_probe_settings",
JSON_EXTRACT(properties, '$.backendPools') as "backend_pools",
JSON_EXTRACT(properties, '$.frontendEndpoints') as "frontend_endpoints",
JSON_EXTRACT(properties, '$.backendPoolsSettings') as "backend_pools_settings",
JSON_EXTRACT(properties, '$.enabledState') as "enabled_state",
JSON_EXTRACT(properties, '$.resourceState') as "resource_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.cname') as "cname",
JSON_EXTRACT(properties, '$.frontdoorId') as "frontdoor_id",
JSON_EXTRACT(properties, '$.rulesEngines') as "rules_engines",
JSON_EXTRACT(properties, '$.extendedProperties') as "extended_properties",
subscriptionId,
resourceGroupName,
frontDoorName
FROM azure.front_door.front_doors
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.routingRules') as "routing_rules",
json_extract_path_text(properties, '$.loadBalancingSettings') as "load_balancing_settings",
json_extract_path_text(properties, '$.healthProbeSettings') as "health_probe_settings",
json_extract_path_text(properties, '$.backendPools') as "backend_pools",
json_extract_path_text(properties, '$.frontendEndpoints') as "frontend_endpoints",
json_extract_path_text(properties, '$.backendPoolsSettings') as "backend_pools_settings",
json_extract_path_text(properties, '$.enabledState') as "enabled_state",
json_extract_path_text(properties, '$.resourceState') as "resource_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.cname') as "cname",
json_extract_path_text(properties, '$.frontdoorId') as "frontdoor_id",
json_extract_path_text(properties, '$.rulesEngines') as "rules_engines",
json_extract_path_text(properties, '$.extendedProperties') as "extended_properties",
subscriptionId,
resourceGroupName,
frontDoorName
FROM azure.front_door.front_doors
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
