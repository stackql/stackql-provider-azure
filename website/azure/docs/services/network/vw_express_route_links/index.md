--- 
title: vw_express_route_links
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_express_route_links
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_express_route_links</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_express_route_links</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_express_route_links" /></td></tr>
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
JSON_EXTRACT(properties, '$.routerName') as "router_name",
JSON_EXTRACT(properties, '$.interfaceName') as "interface_name",
JSON_EXTRACT(properties, '$.patchPanelId') as "patch_panel_id",
JSON_EXTRACT(properties, '$.rackId') as "rack_id",
JSON_EXTRACT(properties, '$.coloLocation') as "colo_location",
JSON_EXTRACT(properties, '$.connectorType') as "connector_type",
JSON_EXTRACT(properties, '$.adminState') as "admin_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.macSecConfig') as "mac_sec_config",
subscriptionId,
resourceGroupName,
expressRoutePortName,
linkName
FROM azure.network.express_route_links
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND expressRoutePortName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
json_extract_path_text(properties, '$.routerName') as "router_name",
json_extract_path_text(properties, '$.interfaceName') as "interface_name",
json_extract_path_text(properties, '$.patchPanelId') as "patch_panel_id",
json_extract_path_text(properties, '$.rackId') as "rack_id",
json_extract_path_text(properties, '$.coloLocation') as "colo_location",
json_extract_path_text(properties, '$.connectorType') as "connector_type",
json_extract_path_text(properties, '$.adminState') as "admin_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.macSecConfig') as "mac_sec_config",
subscriptionId,
resourceGroupName,
expressRoutePortName,
linkName
FROM azure.network.express_route_links
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND expressRoutePortName = 'replace-me';
```

</TabItem>
</Tabs>
