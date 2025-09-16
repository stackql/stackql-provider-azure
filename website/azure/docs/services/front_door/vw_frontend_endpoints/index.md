--- 
title: vw_frontend_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_frontend_endpoints
  - front_door
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

Creates, updates, deletes, gets or lists a <code>vw_frontend_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_frontend_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.front_door.vw_frontend_endpoints" /></td></tr>
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
JSON_EXTRACT(properties, '$.hostName') as "host_name",
JSON_EXTRACT(properties, '$.sessionAffinityEnabledState') as "session_affinity_enabled_state",
JSON_EXTRACT(properties, '$.sessionAffinityTtlSeconds') as "session_affinity_ttl_seconds",
JSON_EXTRACT(properties, '$.webApplicationFirewallPolicyLink') as "web_application_firewall_policy_link",
JSON_EXTRACT(properties, '$.resourceState') as "resource_state",
JSON_EXTRACT(properties, '$.customHttpsProvisioningState') as "custom_https_provisioning_state",
JSON_EXTRACT(properties, '$.customHttpsProvisioningSubstate') as "custom_https_provisioning_substate",
JSON_EXTRACT(properties, '$.customHttpsConfiguration') as "custom_https_configuration",
subscriptionId,
resourceGroupName,
frontDoorName,
frontendEndpointName
FROM azure.front_door.frontend_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND frontDoorName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.hostName') as "host_name",
json_extract_path_text(properties, '$.sessionAffinityEnabledState') as "session_affinity_enabled_state",
json_extract_path_text(properties, '$.sessionAffinityTtlSeconds') as "session_affinity_ttl_seconds",
json_extract_path_text(properties, '$.webApplicationFirewallPolicyLink') as "web_application_firewall_policy_link",
json_extract_path_text(properties, '$.resourceState') as "resource_state",
json_extract_path_text(properties, '$.customHttpsProvisioningState') as "custom_https_provisioning_state",
json_extract_path_text(properties, '$.customHttpsProvisioningSubstate') as "custom_https_provisioning_substate",
json_extract_path_text(properties, '$.customHttpsConfiguration') as "custom_https_configuration",
subscriptionId,
resourceGroupName,
frontDoorName,
frontendEndpointName
FROM azure.front_door.frontend_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND frontDoorName = 'replace-me';
```

</TabItem>
</Tabs>
