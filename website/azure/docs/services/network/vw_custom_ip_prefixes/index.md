--- 
title: vw_custom_ip_prefixes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_custom_ip_prefixes
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

Creates, updates, deletes, gets or lists a <code>vw_custom_ip_prefixes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_custom_ip_prefixes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_custom_ip_prefixes" /></td></tr>
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
etag as etag,
zones as zones,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.asn') as "asn",
JSON_EXTRACT(properties, '$.cidr') as "cidr",
JSON_EXTRACT(properties, '$.signedMessage') as "signed_message",
JSON_EXTRACT(properties, '$.authorizationMessage') as "authorization_message",
JSON_EXTRACT(properties, '$.customIpPrefixParent') as "custom_ip_prefix_parent",
JSON_EXTRACT(properties, '$.childCustomIpPrefixes') as "child_custom_ip_prefixes",
JSON_EXTRACT(properties, '$.commissionedState') as "commissioned_state",
JSON_EXTRACT(properties, '$.expressRouteAdvertise') as "express_route_advertise",
JSON_EXTRACT(properties, '$.geo') as "geo",
JSON_EXTRACT(properties, '$.noInternetAdvertise') as "no_internet_advertise",
JSON_EXTRACT(properties, '$.prefixType') as "prefix_type",
JSON_EXTRACT(properties, '$.publicIpPrefixes') as "public_ip_prefixes",
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
JSON_EXTRACT(properties, '$.failedReason') as "failed_reason",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
customIpPrefixName
FROM azure.network.custom_ip_prefixes
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
extendedLocation as extended_location,
etag as etag,
zones as zones,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.asn') as "asn",
json_extract_path_text(properties, '$.cidr') as "cidr",
json_extract_path_text(properties, '$.signedMessage') as "signed_message",
json_extract_path_text(properties, '$.authorizationMessage') as "authorization_message",
json_extract_path_text(properties, '$.customIpPrefixParent') as "custom_ip_prefix_parent",
json_extract_path_text(properties, '$.childCustomIpPrefixes') as "child_custom_ip_prefixes",
json_extract_path_text(properties, '$.commissionedState') as "commissioned_state",
json_extract_path_text(properties, '$.expressRouteAdvertise') as "express_route_advertise",
json_extract_path_text(properties, '$.geo') as "geo",
json_extract_path_text(properties, '$.noInternetAdvertise') as "no_internet_advertise",
json_extract_path_text(properties, '$.prefixType') as "prefix_type",
json_extract_path_text(properties, '$.publicIpPrefixes') as "public_ip_prefixes",
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
json_extract_path_text(properties, '$.failedReason') as "failed_reason",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
customIpPrefixName
FROM azure.network.custom_ip_prefixes
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
