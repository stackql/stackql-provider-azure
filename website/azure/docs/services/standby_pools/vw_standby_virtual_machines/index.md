--- 
title: vw_standby_virtual_machines
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_standby_virtual_machines
  - standby_pools
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

Creates, updates, deletes, gets or lists a <code>vw_standby_virtual_machines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_standby_virtual_machines</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.standby_pools.vw_standby_virtual_machines" /></td></tr>
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
JSON_EXTRACT(properties, '$.virtualMachineResourceId') as "virtual_machine_resource_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
standbyVirtualMachinePoolName,
standbyVirtualMachineName
FROM azure.standby_pools.standby_virtual_machines
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND standbyVirtualMachinePoolName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.virtualMachineResourceId') as "virtual_machine_resource_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
standbyVirtualMachinePoolName,
standbyVirtualMachineName
FROM azure.standby_pools.standby_virtual_machines
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND standbyVirtualMachinePoolName = 'replace-me';
```

</TabItem>
</Tabs>
