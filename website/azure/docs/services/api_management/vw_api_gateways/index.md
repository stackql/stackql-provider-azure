--- 
title: vw_api_gateways
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_api_gateways
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

Creates, updates, deletes, gets or lists a <code>vw_api_gateways</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_api_gateways</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_api_gateways" /></td></tr>
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
sku as sku,
systemData as system_data,
etag as etag,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.targetProvisioningState') as "target_provisioning_state",
JSON_EXTRACT(properties, '$.createdAtUtc') as "created_at_utc",
JSON_EXTRACT(properties, '$.frontend') as "frontend",
JSON_EXTRACT(properties, '$.backend') as "backend",
JSON_EXTRACT(properties, '$.configurationApi') as "configuration_api",
JSON_EXTRACT(properties, '$.virtualNetworkType') as "virtual_network_type",
subscriptionId,
resourceGroupName,
gatewayName
FROM azure.api_management.api_gateways
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
sku as sku,
systemData as system_data,
etag as etag,
type as type,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.targetProvisioningState') as "target_provisioning_state",
json_extract_path_text(properties, '$.createdAtUtc') as "created_at_utc",
json_extract_path_text(properties, '$.frontend') as "frontend",
json_extract_path_text(properties, '$.backend') as "backend",
json_extract_path_text(properties, '$.configurationApi') as "configuration_api",
json_extract_path_text(properties, '$.virtualNetworkType') as "virtual_network_type",
subscriptionId,
resourceGroupName,
gatewayName
FROM azure.api_management.api_gateways
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
