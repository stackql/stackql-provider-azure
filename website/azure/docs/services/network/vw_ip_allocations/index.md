--- 
title: vw_ip_allocations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_ip_allocations
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_ip_allocations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_ip_allocations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_ip_allocations" /></td></tr>
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
etag as etag,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.subnet') as "subnet",
JSON_EXTRACT(properties, '$.virtualNetwork') as "virtual_network",
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.prefix') as "prefix",
JSON_EXTRACT(properties, '$.prefixLength') as "prefix_length",
JSON_EXTRACT(properties, '$.prefixType') as "prefix_type",
JSON_EXTRACT(properties, '$.ipamAllocationId') as "ipam_allocation_id",
JSON_EXTRACT(properties, '$.allocationTags') as "allocation_tags",
subscriptionId,
resourceGroupName,
ipAllocationName
FROM azure.network.ip_allocations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.subnet') as "subnet",
json_extract_path_text(properties, '$.virtualNetwork') as "virtual_network",
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.prefix') as "prefix",
json_extract_path_text(properties, '$.prefixLength') as "prefix_length",
json_extract_path_text(properties, '$.prefixType') as "prefix_type",
json_extract_path_text(properties, '$.ipamAllocationId') as "ipam_allocation_id",
json_extract_path_text(properties, '$.allocationTags') as "allocation_tags",
subscriptionId,
resourceGroupName,
ipAllocationName
FROM azure.network.ip_allocations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
