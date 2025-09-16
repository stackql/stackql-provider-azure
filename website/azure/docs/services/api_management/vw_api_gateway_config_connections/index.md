--- 
title: vw_api_gateway_config_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_api_gateway_config_connections
  - api_management
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

Creates, updates, deletes, gets or lists a <code>vw_api_gateway_config_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_api_gateway_config_connections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_api_gateway_config_connections" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.sourceId') as "source_id",
JSON_EXTRACT(properties, '$.defaultHostname') as "default_hostname",
JSON_EXTRACT(properties, '$.hostnames') as "hostnames",
subscriptionId,
resourceGroupName,
gatewayName,
configConnectionName
FROM azure.api_management.api_gateway_config_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND gatewayName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.sourceId') as "source_id",
json_extract_path_text(properties, '$.defaultHostname') as "default_hostname",
json_extract_path_text(properties, '$.hostnames') as "hostnames",
subscriptionId,
resourceGroupName,
gatewayName,
configConnectionName
FROM azure.api_management.api_gateway_config_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND gatewayName = 'replace-me';
```

</TabItem>
</Tabs>
