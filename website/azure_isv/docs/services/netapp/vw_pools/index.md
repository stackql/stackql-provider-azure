--- 
title: vw_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_pools
  - netapp
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.netapp.vw_pools" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.poolId') as "pool_id",
JSON_EXTRACT(properties, '$.size') as "size",
JSON_EXTRACT(properties, '$.serviceLevel') as "service_level",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.totalThroughputMibps') as "total_throughput_mibps",
JSON_EXTRACT(properties, '$.utilizedThroughputMibps') as "utilized_throughput_mibps",
JSON_EXTRACT(properties, '$.qosType') as "qos_type",
JSON_EXTRACT(properties, '$.coolAccess') as "cool_access",
JSON_EXTRACT(properties, '$.encryptionType') as "encryption_type",
subscriptionId,
resourceGroupName,
accountName,
poolName
FROM azure_isv.netapp.pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
etag as etag,
json_extract_path_text(properties, '$.poolId') as "pool_id",
json_extract_path_text(properties, '$.size') as "size",
json_extract_path_text(properties, '$.serviceLevel') as "service_level",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.totalThroughputMibps') as "total_throughput_mibps",
json_extract_path_text(properties, '$.utilizedThroughputMibps') as "utilized_throughput_mibps",
json_extract_path_text(properties, '$.qosType') as "qos_type",
json_extract_path_text(properties, '$.coolAccess') as "cool_access",
json_extract_path_text(properties, '$.encryptionType') as "encryption_type",
subscriptionId,
resourceGroupName,
accountName,
poolName
FROM azure_isv.netapp.pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
