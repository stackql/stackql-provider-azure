--- 
title: vw_registries
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_registries
  - ml_services
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

Creates, updates, deletes, gets or lists a <code>vw_registries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_registries</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.vw_registries" /></td></tr>
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
kind as kind,
sku as sku,
JSON_EXTRACT(properties, '$.discoveryUrl') as "discovery_url",
JSON_EXTRACT(properties, '$.intellectualPropertyPublisher') as "intellectual_property_publisher",
JSON_EXTRACT(properties, '$.managedResourceGroup') as "managed_resource_group",
JSON_EXTRACT(properties, '$.managedResourceGroupSettings') as "managed_resource_group_settings",
JSON_EXTRACT(properties, '$.mlFlowRegistryUri') as "ml_flow_registry_uri",
JSON_EXTRACT(properties, '$.registryPrivateEndpointConnections') as "registry_private_endpoint_connections",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.regionDetails') as "region_details",
subscriptionId,
resourceGroupName,
registryName
FROM azure.ml_services.registries
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
kind as kind,
sku as sku,
json_extract_path_text(properties, '$.discoveryUrl') as "discovery_url",
json_extract_path_text(properties, '$.intellectualPropertyPublisher') as "intellectual_property_publisher",
json_extract_path_text(properties, '$.managedResourceGroup') as "managed_resource_group",
json_extract_path_text(properties, '$.managedResourceGroupSettings') as "managed_resource_group_settings",
json_extract_path_text(properties, '$.mlFlowRegistryUri') as "ml_flow_registry_uri",
json_extract_path_text(properties, '$.registryPrivateEndpointConnections') as "registry_private_endpoint_connections",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.regionDetails') as "region_details",
subscriptionId,
resourceGroupName,
registryName
FROM azure.ml_services.registries
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
