--- 
title: vw_network_fabric_skus
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_network_fabric_skus
  - managed_network_fabric
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

Creates, updates, deletes, gets or lists a <code>vw_network_fabric_skus</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_network_fabric_skus</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network_fabric.vw_network_fabric_skus" /></td></tr>
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
JSON_EXTRACT(properties, '$.maxComputeRacks') as "max_compute_racks",
JSON_EXTRACT(properties, '$.maximumServerCount') as "maximum_server_count",
JSON_EXTRACT(properties, '$.supportedVersions') as "supported_versions",
JSON_EXTRACT(properties, '$.details') as "details",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
networkFabricSkuName
FROM azure.managed_network_fabric.network_fabric_skus
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.maxComputeRacks') as "max_compute_racks",
json_extract_path_text(properties, '$.maximumServerCount') as "maximum_server_count",
json_extract_path_text(properties, '$.supportedVersions') as "supported_versions",
json_extract_path_text(properties, '$.details') as "details",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
networkFabricSkuName
FROM azure.managed_network_fabric.network_fabric_skus
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
