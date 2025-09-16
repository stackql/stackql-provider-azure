--- 
title: vw_volumes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_volumes
  - container_storage
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_storage.vw_volumes" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.labels') as "labels",
JSON_EXTRACT(properties, '$.capacityGiB') as "capacity_gib",
JSON_EXTRACT(properties, '$.volumeType') as "volume_type",
subscriptionId,
resourceGroupName,
poolName,
volumeName
FROM azure.container_storage.volumes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND poolName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.labels') as "labels",
json_extract_path_text(properties, '$.capacityGiB') as "capacity_gib",
json_extract_path_text(properties, '$.volumeType') as "volume_type",
subscriptionId,
resourceGroupName,
poolName,
volumeName
FROM azure.container_storage.volumes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND poolName = 'replace-me';
```

</TabItem>
</Tabs>
