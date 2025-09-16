--- 
title: vw_public_ip_prefixes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_public_ip_prefixes
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

Creates, updates, deletes, gets or lists a <code>vw_public_ip_prefixes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_public_ip_prefixes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_public_ip_prefixes" /></td></tr>
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
extendedLocation as extended_location,
sku as sku,
etag as etag,
zones as zones,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.publicIPAddressVersion') as "public_ip_address_version",
JSON_EXTRACT(properties, '$.ipTags') as "ip_tags",
JSON_EXTRACT(properties, '$.prefixLength') as "prefix_length",
JSON_EXTRACT(properties, '$.ipPrefix') as "ip_prefix",
JSON_EXTRACT(properties, '$.publicIPAddresses') as "public_ip_addresses",
JSON_EXTRACT(properties, '$.loadBalancerFrontendIpConfiguration') as "load_balancer_frontend_ip_configuration",
JSON_EXTRACT(properties, '$.customIPPrefix') as "custom_ip_prefix",
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.natGateway') as "nat_gateway",
subscriptionId,
resourceGroupName,
publicIpPrefixName
FROM azure.network.public_ip_prefixes
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
extendedLocation as extended_location,
sku as sku,
etag as etag,
zones as zones,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.publicIPAddressVersion') as "public_ip_address_version",
json_extract_path_text(properties, '$.ipTags') as "ip_tags",
json_extract_path_text(properties, '$.prefixLength') as "prefix_length",
json_extract_path_text(properties, '$.ipPrefix') as "ip_prefix",
json_extract_path_text(properties, '$.publicIPAddresses') as "public_ip_addresses",
json_extract_path_text(properties, '$.loadBalancerFrontendIpConfiguration') as "load_balancer_frontend_ip_configuration",
json_extract_path_text(properties, '$.customIPPrefix') as "custom_ip_prefix",
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.natGateway') as "nat_gateway",
subscriptionId,
resourceGroupName,
publicIpPrefixName
FROM azure.network.public_ip_prefixes
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
