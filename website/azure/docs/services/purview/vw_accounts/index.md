--- 
title: vw_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_accounts
  - purview
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

Creates, updates, deletes, gets or lists a <code>vw_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.purview.vw_accounts" /></td></tr>
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
identity as identity,
systemData as system_data,
tags as tags,
type as type,
sku as sku,
JSON_EXTRACT(properties, '$.accountStatus') as "account_status",
JSON_EXTRACT(properties, '$.cloudConnectors') as "cloud_connectors",
JSON_EXTRACT(properties, '$.createdAt') as "created_at",
JSON_EXTRACT(properties, '$.createdBy') as "created_by",
JSON_EXTRACT(properties, '$.createdByObjectId') as "created_by_object_id",
JSON_EXTRACT(properties, '$.defaultDomain') as "default_domain",
JSON_EXTRACT(properties, '$.endpoints') as "endpoints",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.ingestionStorage') as "ingestion_storage",
JSON_EXTRACT(properties, '$.managedEventHubState') as "managed_event_hub_state",
JSON_EXTRACT(properties, '$.managedResourceGroupName') as "managed_resource_group_name",
JSON_EXTRACT(properties, '$.managedResources') as "managed_resources",
JSON_EXTRACT(properties, '$.managedResourcesPublicNetworkAccess') as "managed_resources_public_network_access",
JSON_EXTRACT(properties, '$.mergeInfo') as "merge_info",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.tenantEndpointState') as "tenant_endpoint_state",
subscriptionId,
resourceGroupName,
accountName
FROM azure.purview.accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
identity as identity,
systemData as system_data,
tags as tags,
type as type,
sku as sku,
json_extract_path_text(properties, '$.accountStatus') as "account_status",
json_extract_path_text(properties, '$.cloudConnectors') as "cloud_connectors",
json_extract_path_text(properties, '$.createdAt') as "created_at",
json_extract_path_text(properties, '$.createdBy') as "created_by",
json_extract_path_text(properties, '$.createdByObjectId') as "created_by_object_id",
json_extract_path_text(properties, '$.defaultDomain') as "default_domain",
json_extract_path_text(properties, '$.endpoints') as "endpoints",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.ingestionStorage') as "ingestion_storage",
json_extract_path_text(properties, '$.managedEventHubState') as "managed_event_hub_state",
json_extract_path_text(properties, '$.managedResourceGroupName') as "managed_resource_group_name",
json_extract_path_text(properties, '$.managedResources') as "managed_resources",
json_extract_path_text(properties, '$.managedResourcesPublicNetworkAccess') as "managed_resources_public_network_access",
json_extract_path_text(properties, '$.mergeInfo') as "merge_info",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.tenantEndpointState') as "tenant_endpoint_state",
subscriptionId,
resourceGroupName,
accountName
FROM azure.purview.accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
