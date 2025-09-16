--- 
title: vw_peering_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_peering_policies
  - managed_network
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

Creates, updates, deletes, gets or lists a <code>vw_peering_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_peering_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network.vw_peering_policies" /></td></tr>
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
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.hub') as "hub",
JSON_EXTRACT(properties, '$.spokes') as "spokes",
JSON_EXTRACT(properties, '$.mesh') as "mesh",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.etag') as "etag",
subscriptionId,
resourceGroupName,
managedNetworkName,
managedNetworkPeeringPolicyName
FROM azure.managed_network.peering_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedNetworkName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.hub') as "hub",
json_extract_path_text(properties, '$.spokes') as "spokes",
json_extract_path_text(properties, '$.mesh') as "mesh",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.etag') as "etag",
subscriptionId,
resourceGroupName,
managedNetworkName,
managedNetworkPeeringPolicyName
FROM azure.managed_network.peering_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedNetworkName = 'replace-me';
```

</TabItem>
</Tabs>
