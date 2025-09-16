--- 
title: vw_replications
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replications
  - container_registry
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

Creates, updates, deletes, gets or lists a <code>vw_replications</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replications</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_registry.vw_replications" /></td></tr>
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
type as type,
tags as tags,
systemData as system_data,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.regionEndpointEnabled') as "region_endpoint_enabled",
JSON_EXTRACT(properties, '$.zoneRedundancy') as "zone_redundancy",
subscriptionId,
resourceGroupName,
registryName,
replicationName
FROM azure.container_registry.replications
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND registryName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.regionEndpointEnabled') as "region_endpoint_enabled",
json_extract_path_text(properties, '$.zoneRedundancy') as "zone_redundancy",
subscriptionId,
resourceGroupName,
registryName,
replicationName
FROM azure.container_registry.replications
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND registryName = 'replace-me';
```

</TabItem>
</Tabs>
