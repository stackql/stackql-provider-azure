--- 
title: vw_artifact_stores
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_artifact_stores
  - hybrid_network
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

Creates, updates, deletes, gets or lists a <code>vw_artifact_stores</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_artifact_stores</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_network.vw_artifact_stores" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.storeType') as "store_type",
JSON_EXTRACT(properties, '$.backingResourcePublicNetworkAccess') as "backing_resource_public_network_access",
JSON_EXTRACT(properties, '$.replicationStrategy') as "replication_strategy",
JSON_EXTRACT(properties, '$.managedResourceGroupConfiguration') as "managed_resource_group_configuration",
JSON_EXTRACT(properties, '$.storageResourceId') as "storage_resource_id",
subscriptionId,
resourceGroupName,
publisherName,
artifactStoreName
FROM azure.hybrid_network.artifact_stores
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND publisherName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.storeType') as "store_type",
json_extract_path_text(properties, '$.backingResourcePublicNetworkAccess') as "backing_resource_public_network_access",
json_extract_path_text(properties, '$.replicationStrategy') as "replication_strategy",
json_extract_path_text(properties, '$.managedResourceGroupConfiguration') as "managed_resource_group_configuration",
json_extract_path_text(properties, '$.storageResourceId') as "storage_resource_id",
subscriptionId,
resourceGroupName,
publisherName,
artifactStoreName
FROM azure.hybrid_network.artifact_stores
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND publisherName = 'replace-me';
```

</TabItem>
</Tabs>
