--- 
title: vw_gateway_route_configs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_gateway_route_configs
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

Creates, updates, deletes, gets or lists a <code>vw_gateway_route_configs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_gateway_route_configs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.spring_apps.vw_gateway_route_configs" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.appResourceId') as "app_resource_id",
JSON_EXTRACT(properties, '$.openApi') as "open_api",
JSON_EXTRACT(properties, '$.protocol') as "protocol",
JSON_EXTRACT(properties, '$.routes') as "routes",
JSON_EXTRACT(properties, '$.ssoEnabled') as "sso_enabled",
JSON_EXTRACT(properties, '$.predicates') as "predicates",
JSON_EXTRACT(properties, '$.filters') as "filters",
subscriptionId,
resourceGroupName,
serviceName,
gatewayName,
routeConfigName
FROM azure.spring_apps.gateway_route_configs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND gatewayName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.appResourceId') as "app_resource_id",
json_extract_path_text(properties, '$.openApi') as "open_api",
json_extract_path_text(properties, '$.protocol') as "protocol",
json_extract_path_text(properties, '$.routes') as "routes",
json_extract_path_text(properties, '$.ssoEnabled') as "sso_enabled",
json_extract_path_text(properties, '$.predicates') as "predicates",
json_extract_path_text(properties, '$.filters') as "filters",
subscriptionId,
resourceGroupName,
serviceName,
gatewayName,
routeConfigName
FROM azure.spring_apps.gateway_route_configs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND gatewayName = 'replace-me';
```

</TabItem>
</Tabs>
