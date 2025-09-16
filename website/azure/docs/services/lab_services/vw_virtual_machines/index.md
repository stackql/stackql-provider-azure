--- 
title: vw_virtual_machines
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_machines
  - lab_services
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_machines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_machines</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.lab_services.vw_virtual_machines" /></td></tr>
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
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.resourceOperationError') as "resource_operation_error",
JSON_EXTRACT(properties, '$.connectionProfile') as "connection_profile",
JSON_EXTRACT(properties, '$.claimedByUserId') as "claimed_by_user_id",
JSON_EXTRACT(properties, '$.vmType') as "vm_type",
subscriptionId,
resourceGroupName,
labName,
virtualMachineName
FROM azure.lab_services.virtual_machines
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.resourceOperationError') as "resource_operation_error",
json_extract_path_text(properties, '$.connectionProfile') as "connection_profile",
json_extract_path_text(properties, '$.claimedByUserId') as "claimed_by_user_id",
json_extract_path_text(properties, '$.vmType') as "vm_type",
subscriptionId,
resourceGroupName,
labName,
virtualMachineName
FROM azure.lab_services.virtual_machines
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me';
```

</TabItem>
</Tabs>
