--- 
title: vw_labs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_labs
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

Creates, updates, deletes, gets or lists a <code>vw_labs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_labs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.lab_services.vw_labs" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.autoShutdownProfile') as "auto_shutdown_profile",
JSON_EXTRACT(properties, '$.connectionProfile') as "connection_profile",
JSON_EXTRACT(properties, '$.virtualMachineProfile') as "virtual_machine_profile",
JSON_EXTRACT(properties, '$.securityProfile') as "security_profile",
JSON_EXTRACT(properties, '$.rosterProfile') as "roster_profile",
JSON_EXTRACT(properties, '$.labPlanId') as "lab_plan_id",
JSON_EXTRACT(properties, '$.title') as "title",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.networkProfile') as "network_profile",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.resourceOperationError') as "resource_operation_error",
subscriptionId,
resourceGroupName,
labName
FROM azure.lab_services.labs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
systemData as system_data,
json_extract_path_text(properties, '$.autoShutdownProfile') as "auto_shutdown_profile",
json_extract_path_text(properties, '$.connectionProfile') as "connection_profile",
json_extract_path_text(properties, '$.virtualMachineProfile') as "virtual_machine_profile",
json_extract_path_text(properties, '$.securityProfile') as "security_profile",
json_extract_path_text(properties, '$.rosterProfile') as "roster_profile",
json_extract_path_text(properties, '$.labPlanId') as "lab_plan_id",
json_extract_path_text(properties, '$.title') as "title",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.networkProfile') as "network_profile",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.resourceOperationError') as "resource_operation_error",
subscriptionId,
resourceGroupName,
labName
FROM azure.lab_services.labs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
