--- 
title: vw_mac_address_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_mac_address_pools
  - fabric_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_mac_address_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_mac_address_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.fabric_admin.vw_mac_address_pools" /></td></tr>
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
type as type,
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.startMacAddress') as "start_mac_address",
JSON_EXTRACT(properties, '$.endMacAddress') as "end_mac_address",
JSON_EXTRACT(properties, '$.numberOfAllocatedMacAddresses') as "number_of_allocated_mac_addresses",
JSON_EXTRACT(properties, '$.numberOfAvailableMacAddresses') as "number_of_available_mac_addresses",
subscriptionId,
resourceGroupName,
location,
macAddressPool
FROM azure_stack.fabric_admin.mac_address_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.startMacAddress') as "start_mac_address",
json_extract_path_text(properties, '$.endMacAddress') as "end_mac_address",
json_extract_path_text(properties, '$.numberOfAllocatedMacAddresses') as "number_of_allocated_mac_addresses",
json_extract_path_text(properties, '$.numberOfAvailableMacAddresses') as "number_of_available_mac_addresses",
subscriptionId,
resourceGroupName,
location,
macAddressPool
FROM azure_stack.fabric_admin.mac_address_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
