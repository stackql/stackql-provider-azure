--- 
title: vw_storage_targets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_storage_targets
  - storage_cache
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

Creates, updates, deletes, gets or lists a <code>vw_storage_targets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_storage_targets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_cache.vw_storage_targets" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.junctions') as "junctions",
JSON_EXTRACT(properties, '$.targetType') as "target_type",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.nfs3') as "nfs3",
JSON_EXTRACT(properties, '$.clfs') as "clfs",
JSON_EXTRACT(properties, '$.unknown') as "unknown",
JSON_EXTRACT(properties, '$.blobNfs') as "blob_nfs",
JSON_EXTRACT(properties, '$.allocationPercentage') as "allocation_percentage",
subscriptionId,
resourceGroupName,
cacheName,
storageTargetName
FROM azure.storage_cache.storage_targets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND cacheName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.junctions') as "junctions",
json_extract_path_text(properties, '$.targetType') as "target_type",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.nfs3') as "nfs3",
json_extract_path_text(properties, '$.clfs') as "clfs",
json_extract_path_text(properties, '$.unknown') as "unknown",
json_extract_path_text(properties, '$.blobNfs') as "blob_nfs",
json_extract_path_text(properties, '$.allocationPercentage') as "allocation_percentage",
subscriptionId,
resourceGroupName,
cacheName,
storageTargetName
FROM azure.storage_cache.storage_targets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND cacheName = 'replace-me';
```

</TabItem>
</Tabs>
