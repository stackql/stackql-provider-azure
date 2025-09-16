--- 
title: vw_data_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_data_pools
  - autonomous_dev_platform
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

Creates, updates, deletes, gets or lists a <code>vw_data_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_data_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.autonomous_dev_platform.vw_data_pools" /></td></tr>
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
systemData as system_data,
type as type,
JSON_EXTRACT(properties, '$.dataPoolId') as "data_pool_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.locations') as "locations",
JSON_EXTRACT(properties, '$.tags') as "tags",
subscriptionId,
resourceGroupName,
accountName,
dataPoolName
FROM azure.autonomous_dev_platform.data_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
systemData as system_data,
type as type,
json_extract_path_text(properties, '$.dataPoolId') as "data_pool_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.locations') as "locations",
json_extract_path_text(properties, '$.tags') as "tags",
subscriptionId,
resourceGroupName,
accountName,
dataPoolName
FROM azure.autonomous_dev_platform.data_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
