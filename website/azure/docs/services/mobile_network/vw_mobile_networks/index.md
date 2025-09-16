--- 
title: vw_mobile_networks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_mobile_networks
  - mobile_network
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

Creates, updates, deletes, gets or lists a <code>vw_mobile_networks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_mobile_networks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mobile_network.vw_mobile_networks" /></td></tr>
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
location as location,
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.publicLandMobileNetworkIdentifier') as "public_land_mobile_network_identifier",
JSON_EXTRACT(properties, '$.publicLandMobileNetworks') as "public_land_mobile_networks",
JSON_EXTRACT(properties, '$.serviceKey') as "service_key",
subscriptionId,
resourceGroupName,
mobileNetworkName
FROM azure.mobile_network.mobile_networks
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.publicLandMobileNetworkIdentifier') as "public_land_mobile_network_identifier",
json_extract_path_text(properties, '$.publicLandMobileNetworks') as "public_land_mobile_networks",
json_extract_path_text(properties, '$.serviceKey') as "service_key",
subscriptionId,
resourceGroupName,
mobileNetworkName
FROM azure.mobile_network.mobile_networks
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
