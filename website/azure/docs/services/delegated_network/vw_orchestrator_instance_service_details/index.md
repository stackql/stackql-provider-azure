--- 
title: vw_orchestrator_instance_service_details
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_orchestrator_instance_service_details
  - delegated_network
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

Creates, updates, deletes, gets or lists a <code>vw_orchestrator_instance_service_details</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_orchestrator_instance_service_details</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.delegated_network.vw_orchestrator_instance_service_details" /></td></tr>
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
kind as kind,
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.orchestratorAppId') as "orchestrator_app_id",
JSON_EXTRACT(properties, '$.orchestratorTenantId') as "orchestrator_tenant_id",
JSON_EXTRACT(properties, '$.clusterRootCA') as "cluster_root_ca",
JSON_EXTRACT(properties, '$.apiServerEndpoint') as "api_server_endpoint",
JSON_EXTRACT(properties, '$.privateLinkResourceId') as "private_link_resource_id",
JSON_EXTRACT(properties, '$.controllerDetails') as "controller_details",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.delegated_network.orchestrator_instance_service_details
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
kind as kind,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.orchestratorAppId') as "orchestrator_app_id",
json_extract_path_text(properties, '$.orchestratorTenantId') as "orchestrator_tenant_id",
json_extract_path_text(properties, '$.clusterRootCA') as "cluster_root_ca",
json_extract_path_text(properties, '$.apiServerEndpoint') as "api_server_endpoint",
json_extract_path_text(properties, '$.privateLinkResourceId') as "private_link_resource_id",
json_extract_path_text(properties, '$.controllerDetails') as "controller_details",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.delegated_network.orchestrator_instance_service_details
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
