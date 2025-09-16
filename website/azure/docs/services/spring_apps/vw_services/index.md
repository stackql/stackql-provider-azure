--- 
title: vw_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_services
  - spring_apps
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

Creates, updates, deletes, gets or lists a <code>vw_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.spring_apps.vw_services" /></td></tr>
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
identity as identity,
sku as sku,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.networkProfile') as "network_profile",
JSON_EXTRACT(properties, '$.vnetAddons') as "vnet_addons",
JSON_EXTRACT(properties, '$.maintenanceScheduleConfiguration') as "maintenance_schedule_configuration",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.serviceId') as "service_id",
JSON_EXTRACT(properties, '$.managedEnvironmentId') as "managed_environment_id",
JSON_EXTRACT(properties, '$.infraResourceGroup') as "infra_resource_group",
JSON_EXTRACT(properties, '$.powerState') as "power_state",
JSON_EXTRACT(properties, '$.zoneRedundant') as "zone_redundant",
JSON_EXTRACT(properties, '$.fqdn') as "fqdn",
JSON_EXTRACT(properties, '$.marketplaceResource') as "marketplace_resource",
subscriptionId,
resourceGroupName,
serviceName
FROM azure.spring_apps.services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
sku as sku,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.networkProfile') as "network_profile",
json_extract_path_text(properties, '$.vnetAddons') as "vnet_addons",
json_extract_path_text(properties, '$.maintenanceScheduleConfiguration') as "maintenance_schedule_configuration",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.serviceId') as "service_id",
json_extract_path_text(properties, '$.managedEnvironmentId') as "managed_environment_id",
json_extract_path_text(properties, '$.infraResourceGroup') as "infra_resource_group",
json_extract_path_text(properties, '$.powerState') as "power_state",
json_extract_path_text(properties, '$.zoneRedundant') as "zone_redundant",
json_extract_path_text(properties, '$.fqdn') as "fqdn",
json_extract_path_text(properties, '$.marketplaceResource') as "marketplace_resource",
subscriptionId,
resourceGroupName,
serviceName
FROM azure.spring_apps.services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
