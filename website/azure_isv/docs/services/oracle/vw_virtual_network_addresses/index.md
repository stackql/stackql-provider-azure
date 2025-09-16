--- 
title: vw_virtual_network_addresses
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_network_addresses
  - oracle
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_network_addresses</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_network_addresses</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.oracle.vw_virtual_network_addresses" /></td></tr>
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
JSON_EXTRACT(properties, '$.ipAddress') as "ip_address",
JSON_EXTRACT(properties, '$.vmOcid') as "vm_ocid",
JSON_EXTRACT(properties, '$.ocid') as "ocid",
JSON_EXTRACT(properties, '$.domain') as "domain",
JSON_EXTRACT(properties, '$.lifecycleDetails') as "lifecycle_details",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.lifecycleState') as "lifecycle_state",
JSON_EXTRACT(properties, '$.timeAssigned') as "time_assigned",
subscriptionId,
resourceGroupName,
cloudvmclustername,
virtualnetworkaddressname
FROM azure_isv.oracle.virtual_network_addresses
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND cloudvmclustername = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.ipAddress') as "ip_address",
json_extract_path_text(properties, '$.vmOcid') as "vm_ocid",
json_extract_path_text(properties, '$.ocid') as "ocid",
json_extract_path_text(properties, '$.domain') as "domain",
json_extract_path_text(properties, '$.lifecycleDetails') as "lifecycle_details",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.lifecycleState') as "lifecycle_state",
json_extract_path_text(properties, '$.timeAssigned') as "time_assigned",
subscriptionId,
resourceGroupName,
cloudvmclustername,
virtualnetworkaddressname
FROM azure_isv.oracle.virtual_network_addresses
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND cloudvmclustername = 'replace-me';
```

</TabItem>
</Tabs>
