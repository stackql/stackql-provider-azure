--- 
title: vw_virtual_machine_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_machine_instances
  - azure_stack_hci
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_machine_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_machine_instances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_stack_hci.vw_virtual_machine_instances" /></td></tr>
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
extendedLocation as extended_location,
identity as identity,
JSON_EXTRACT(properties, '$.hardwareProfile') as "hardware_profile",
JSON_EXTRACT(properties, '$.networkProfile') as "network_profile",
JSON_EXTRACT(properties, '$.osProfile') as "os_profile",
JSON_EXTRACT(properties, '$.securityProfile') as "security_profile",
JSON_EXTRACT(properties, '$.storageProfile') as "storage_profile",
JSON_EXTRACT(properties, '$.httpProxyConfig') as "http_proxy_config",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.instanceView') as "instance_view",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.guestAgentInstallStatus') as "guest_agent_install_status",
JSON_EXTRACT(properties, '$.vmId') as "vm_id",
JSON_EXTRACT(properties, '$.resourceUid') as "resource_uid",
resourceUri
FROM azure_stack.azure_stack_hci.virtual_machine_instances
WHERE resourceUri = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
extendedLocation as extended_location,
identity as identity,
json_extract_path_text(properties, '$.hardwareProfile') as "hardware_profile",
json_extract_path_text(properties, '$.networkProfile') as "network_profile",
json_extract_path_text(properties, '$.osProfile') as "os_profile",
json_extract_path_text(properties, '$.securityProfile') as "security_profile",
json_extract_path_text(properties, '$.storageProfile') as "storage_profile",
json_extract_path_text(properties, '$.httpProxyConfig') as "http_proxy_config",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.instanceView') as "instance_view",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.guestAgentInstallStatus') as "guest_agent_install_status",
json_extract_path_text(properties, '$.vmId') as "vm_id",
json_extract_path_text(properties, '$.resourceUid') as "resource_uid",
resourceUri
FROM azure_stack.azure_stack_hci.virtual_machine_instances
WHERE resourceUri = 'replace-me';
```

</TabItem>
</Tabs>
