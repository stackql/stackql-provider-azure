--- 
title: vw_workspaces
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workspaces
  - desktop_virtualization
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

Creates, updates, deletes, gets or lists a <code>vw_workspaces</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workspaces</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.desktop_virtualization.vw_workspaces" /></td></tr>
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
managedBy as managed_by,
kind as kind,
etag as etag,
identity as identity,
sku as sku,
plan as plan,
JSON_EXTRACT(properties, '$.objectId') as "object_id",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.applicationGroupReferences') as "application_group_references",
JSON_EXTRACT(properties, '$.cloudPcResource') as "cloud_pc_resource",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
subscriptionId,
resourceGroupName,
workspaceName
FROM azure.desktop_virtualization.workspaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
managedBy as managed_by,
kind as kind,
etag as etag,
identity as identity,
sku as sku,
plan as plan,
json_extract_path_text(properties, '$.objectId') as "object_id",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.applicationGroupReferences') as "application_group_references",
json_extract_path_text(properties, '$.cloudPcResource') as "cloud_pc_resource",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
subscriptionId,
resourceGroupName,
workspaceName
FROM azure.desktop_virtualization.workspaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
