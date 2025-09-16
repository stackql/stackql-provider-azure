--- 
title: vw_creators
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_creators
  - maps
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

Creates, updates, deletes, gets or lists a <code>vw_creators</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_creators</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.maps.vw_creators" /></td></tr>
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
systemData as system_data,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.storageUnits') as "storage_units",
JSON_EXTRACT(properties, '$.totalStorageUnitSizeInBytes') as "total_storage_unit_size_in_bytes",
JSON_EXTRACT(properties, '$.consumedStorageUnitSizeInBytes') as "consumed_storage_unit_size_in_bytes",
subscriptionId,
resourceGroupName,
accountName,
creatorName
FROM azure.maps.creators
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
systemData as system_data,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.storageUnits') as "storage_units",
json_extract_path_text(properties, '$.totalStorageUnitSizeInBytes') as "total_storage_unit_size_in_bytes",
json_extract_path_text(properties, '$.consumedStorageUnitSizeInBytes') as "consumed_storage_unit_size_in_bytes",
subscriptionId,
resourceGroupName,
accountName,
creatorName
FROM azure.maps.creators
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
