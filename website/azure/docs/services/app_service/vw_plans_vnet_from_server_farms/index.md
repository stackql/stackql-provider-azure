--- 
title: vw_plans_vnet_from_server_farms
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_plans_vnet_from_server_farms
  - app_service
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

Creates, updates, deletes, gets or lists a <code>vw_plans_vnet_from_server_farms</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_plans_vnet_from_server_farms</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.vw_plans_vnet_from_server_farms" /></td></tr>
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
kind as kind,
type as type,
JSON_EXTRACT(properties, '$.vnetResourceId') as "vnet_resource_id",
JSON_EXTRACT(properties, '$.certThumbprint') as "cert_thumbprint",
JSON_EXTRACT(properties, '$.certBlob') as "cert_blob",
JSON_EXTRACT(properties, '$.routes') as "routes",
JSON_EXTRACT(properties, '$.resyncRequired') as "resync_required",
JSON_EXTRACT(properties, '$.dnsServers') as "dns_servers",
JSON_EXTRACT(properties, '$.isSwift') as "is_swift",
subscriptionId,
resourceGroupName,
name,
vnetName
FROM azure.app_service.plans_vnet_from_server_farms
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND name = 'replace-me' AND vnetName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
kind as kind,
type as type,
json_extract_path_text(properties, '$.vnetResourceId') as "vnet_resource_id",
json_extract_path_text(properties, '$.certThumbprint') as "cert_thumbprint",
json_extract_path_text(properties, '$.certBlob') as "cert_blob",
json_extract_path_text(properties, '$.routes') as "routes",
json_extract_path_text(properties, '$.resyncRequired') as "resync_required",
json_extract_path_text(properties, '$.dnsServers') as "dns_servers",
json_extract_path_text(properties, '$.isSwift') as "is_swift",
subscriptionId,
resourceGroupName,
name,
vnetName
FROM azure.app_service.plans_vnet_from_server_farms
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND name = 'replace-me' AND vnetName = 'replace-me';
```

</TabItem>
</Tabs>
