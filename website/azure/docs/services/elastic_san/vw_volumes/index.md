--- 
title: vw_volumes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_volumes
  - elastic_san
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

Creates, updates, deletes, gets or lists a <code>vw_volumes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_volumes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.elastic_san.vw_volumes" /></td></tr>
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
JSON_EXTRACT(properties, '$.volumeId') as "volume_id",
JSON_EXTRACT(properties, '$.creationData') as "creation_data",
JSON_EXTRACT(properties, '$.sizeGiB') as "size_gib",
JSON_EXTRACT(properties, '$.storageTarget') as "storage_target",
JSON_EXTRACT(properties, '$.managedBy') as "managed_by",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
elasticSanName,
volumeGroupName,
volumeName
FROM azure.elastic_san.volumes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND elasticSanName = 'replace-me' AND volumeGroupName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.volumeId') as "volume_id",
json_extract_path_text(properties, '$.creationData') as "creation_data",
json_extract_path_text(properties, '$.sizeGiB') as "size_gib",
json_extract_path_text(properties, '$.storageTarget') as "storage_target",
json_extract_path_text(properties, '$.managedBy') as "managed_by",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
elasticSanName,
volumeGroupName,
volumeName
FROM azure.elastic_san.volumes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND elasticSanName = 'replace-me' AND volumeGroupName = 'replace-me';
```

</TabItem>
</Tabs>
