--- 
title: vw_availability_group_listeners
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_availability_group_listeners
  - sql_vm
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

Creates, updates, deletes, gets or lists a <code>vw_availability_group_listeners</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_availability_group_listeners</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql_vm.vw_availability_group_listeners" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.availabilityGroupName') as "availability_group_name",
JSON_EXTRACT(properties, '$.loadBalancerConfigurations') as "load_balancer_configurations",
JSON_EXTRACT(properties, '$.multiSubnetIpConfigurations') as "multi_subnet_ip_configurations",
JSON_EXTRACT(properties, '$.createDefaultAvailabilityGroupIfNotExist') as "create_default_availability_group_if_not_exist",
JSON_EXTRACT(properties, '$.port') as "port",
JSON_EXTRACT(properties, '$.availabilityGroupConfiguration') as "availability_group_configuration",
subscriptionId,
resourceGroupName,
sqlVirtualMachineGroupName,
availabilityGroupListenerName
FROM azure.sql_vm.availability_group_listeners
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND sqlVirtualMachineGroupName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.availabilityGroupName') as "availability_group_name",
json_extract_path_text(properties, '$.loadBalancerConfigurations') as "load_balancer_configurations",
json_extract_path_text(properties, '$.multiSubnetIpConfigurations') as "multi_subnet_ip_configurations",
json_extract_path_text(properties, '$.createDefaultAvailabilityGroupIfNotExist') as "create_default_availability_group_if_not_exist",
json_extract_path_text(properties, '$.port') as "port",
json_extract_path_text(properties, '$.availabilityGroupConfiguration') as "availability_group_configuration",
subscriptionId,
resourceGroupName,
sqlVirtualMachineGroupName,
availabilityGroupListenerName
FROM azure.sql_vm.availability_group_listeners
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND sqlVirtualMachineGroupName = 'replace-me';
```

</TabItem>
</Tabs>
