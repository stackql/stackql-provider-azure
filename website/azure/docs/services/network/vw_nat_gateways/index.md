--- 
title: vw_nat_gateways
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_nat_gateways
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

Creates, updates, deletes, gets or lists a <code>vw_nat_gateways</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_nat_gateways</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_nat_gateways" /></td></tr>
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
sku as sku,
zones as zones,
etag as etag,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.idleTimeoutInMinutes') as "idle_timeout_in_minutes",
JSON_EXTRACT(properties, '$.publicIpAddresses') as "public_ip_addresses",
JSON_EXTRACT(properties, '$.publicIpPrefixes') as "public_ip_prefixes",
JSON_EXTRACT(properties, '$.subnets') as "subnets",
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
natGatewayName
FROM azure.network.nat_gateways
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
sku as sku,
zones as zones,
etag as etag,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.idleTimeoutInMinutes') as "idle_timeout_in_minutes",
json_extract_path_text(properties, '$.publicIpAddresses') as "public_ip_addresses",
json_extract_path_text(properties, '$.publicIpPrefixes') as "public_ip_prefixes",
json_extract_path_text(properties, '$.subnets') as "subnets",
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
natGatewayName
FROM azure.network.nat_gateways
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
