--- 
title: vw_traffic_controller_interfaces
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_traffic_controller_interfaces
  - service_networking
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

Creates, updates, deletes, gets or lists a <code>vw_traffic_controller_interfaces</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_traffic_controller_interfaces</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_networking.vw_traffic_controller_interfaces" /></td></tr>
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
JSON_EXTRACT(properties, '$.configurationEndpoints') as "configuration_endpoints",
JSON_EXTRACT(properties, '$.frontends') as "frontends",
JSON_EXTRACT(properties, '$.associations') as "associations",
JSON_EXTRACT(properties, '$.securityPolicies') as "security_policies",
JSON_EXTRACT(properties, '$.securityPolicyConfigurations') as "security_policy_configurations",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
trafficControllerName
FROM azure.service_networking.traffic_controller_interfaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.configurationEndpoints') as "configuration_endpoints",
json_extract_path_text(properties, '$.frontends') as "frontends",
json_extract_path_text(properties, '$.associations') as "associations",
json_extract_path_text(properties, '$.securityPolicies') as "security_policies",
json_extract_path_text(properties, '$.securityPolicyConfigurations') as "security_policy_configurations",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
trafficControllerName
FROM azure.service_networking.traffic_controller_interfaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
