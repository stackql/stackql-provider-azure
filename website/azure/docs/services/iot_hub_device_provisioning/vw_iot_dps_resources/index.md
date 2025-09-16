--- 
title: vw_iot_dps_resources
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_iot_dps_resources
  - iot_hub_device_provisioning
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

Creates, updates, deletes, gets or lists a <code>vw_iot_dps_resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_iot_dps_resources</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_hub_device_provisioning.vw_iot_dps_resources" /></td></tr>
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
etag as etag,
sku as sku,
systemData as system_data,
identity as identity,
type as type,
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.ipFilterRules') as "ip_filter_rules",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.iotHubs') as "iot_hubs",
JSON_EXTRACT(properties, '$.allocationPolicy') as "allocation_policy",
JSON_EXTRACT(properties, '$.serviceOperationsHostName') as "service_operations_host_name",
JSON_EXTRACT(properties, '$.deviceProvisioningHostName') as "device_provisioning_host_name",
JSON_EXTRACT(properties, '$.idScope') as "id_scope",
JSON_EXTRACT(properties, '$.authorizationPolicies') as "authorization_policies",
JSON_EXTRACT(properties, '$.enableDataResidency') as "enable_data_residency",
JSON_EXTRACT(properties, '$.portalOperationsHostName') as "portal_operations_host_name",
subscriptionId,
resourceGroupName,
provisioningServiceName
FROM azure.iot_hub_device_provisioning.iot_dps_resources
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
sku as sku,
systemData as system_data,
identity as identity,
type as type,
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.ipFilterRules') as "ip_filter_rules",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.iotHubs') as "iot_hubs",
json_extract_path_text(properties, '$.allocationPolicy') as "allocation_policy",
json_extract_path_text(properties, '$.serviceOperationsHostName') as "service_operations_host_name",
json_extract_path_text(properties, '$.deviceProvisioningHostName') as "device_provisioning_host_name",
json_extract_path_text(properties, '$.idScope') as "id_scope",
json_extract_path_text(properties, '$.authorizationPolicies') as "authorization_policies",
json_extract_path_text(properties, '$.enableDataResidency') as "enable_data_residency",
json_extract_path_text(properties, '$.portalOperationsHostName') as "portal_operations_host_name",
subscriptionId,
resourceGroupName,
provisioningServiceName
FROM azure.iot_hub_device_provisioning.iot_dps_resources
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
