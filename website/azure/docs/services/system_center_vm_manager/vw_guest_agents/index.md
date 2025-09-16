--- 
title: vw_guest_agents
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_guest_agents
  - system_center_vm_manager
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

Creates, updates, deletes, gets or lists a <code>vw_guest_agents</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_guest_agents</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.system_center_vm_manager.vw_guest_agents" /></td></tr>
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
JSON_EXTRACT(properties, '$.uuid') as "uuid",
JSON_EXTRACT(properties, '$.credentials') as "credentials",
JSON_EXTRACT(properties, '$.httpProxyConfig') as "http_proxy_config",
JSON_EXTRACT(properties, '$.provisioningAction') as "provisioning_action",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.customResourceName') as "custom_resource_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.privateLinkScopeResourceId') as "private_link_scope_resource_id",
resourceUri
FROM azure.system_center_vm_manager.guest_agents
WHERE resourceUri = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.uuid') as "uuid",
json_extract_path_text(properties, '$.credentials') as "credentials",
json_extract_path_text(properties, '$.httpProxyConfig') as "http_proxy_config",
json_extract_path_text(properties, '$.provisioningAction') as "provisioning_action",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.customResourceName') as "custom_resource_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.privateLinkScopeResourceId') as "private_link_scope_resource_id",
resourceUri
FROM azure.system_center_vm_manager.guest_agents
WHERE resourceUri = 'replace-me';
```

</TabItem>
</Tabs>
