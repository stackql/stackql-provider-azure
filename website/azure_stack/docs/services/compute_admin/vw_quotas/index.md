--- 
title: vw_quotas
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_quotas
  - compute_admin
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

Creates, updates, deletes, gets or lists a <code>vw_quotas</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_quotas</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.compute_admin.vw_quotas" /></td></tr>
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
JSON_EXTRACT(properties, '$.availabilitySetCount') as "availability_set_count",
JSON_EXTRACT(properties, '$.coresLimit') as "cores_limit",
JSON_EXTRACT(properties, '$.virtualMachineCount') as "virtual_machine_count",
JSON_EXTRACT(properties, '$.vmScaleSetCount') as "vm_scale_set_count",
JSON_EXTRACT(properties, '$.maxAllocationStandardManagedDisksAndSnapshots') as "max_allocation_standard_managed_disks_and_snapshots",
JSON_EXTRACT(properties, '$.maxAllocationPremiumManagedDisksAndSnapshots') as "max_allocation_premium_managed_disks_and_snapshots",
JSON_EXTRACT(properties, '$.ddagpuCount') as "ddagpu_count",
JSON_EXTRACT(properties, '$.partitionedGpuCount') as "partitioned_gpu_count",
subscriptionId,
location,
quotaName
FROM azure_stack.compute_admin.quotas
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
json_extract_path_text(properties, '$.availabilitySetCount') as "availability_set_count",
json_extract_path_text(properties, '$.coresLimit') as "cores_limit",
json_extract_path_text(properties, '$.virtualMachineCount') as "virtual_machine_count",
json_extract_path_text(properties, '$.vmScaleSetCount') as "vm_scale_set_count",
json_extract_path_text(properties, '$.maxAllocationStandardManagedDisksAndSnapshots') as "max_allocation_standard_managed_disks_and_snapshots",
json_extract_path_text(properties, '$.maxAllocationPremiumManagedDisksAndSnapshots') as "max_allocation_premium_managed_disks_and_snapshots",
json_extract_path_text(properties, '$.ddagpuCount') as "ddagpu_count",
json_extract_path_text(properties, '$.partitionedGpuCount') as "partitioned_gpu_count",
subscriptionId,
location,
quotaName
FROM azure_stack.compute_admin.quotas
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
