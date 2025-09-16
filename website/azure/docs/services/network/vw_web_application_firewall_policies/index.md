--- 
title: vw_web_application_firewall_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_web_application_firewall_policies
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_web_application_firewall_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_web_application_firewall_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_web_application_firewall_policies" /></td></tr>
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
etag as etag,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.policySettings') as "policy_settings",
JSON_EXTRACT(properties, '$.customRules') as "custom_rules",
JSON_EXTRACT(properties, '$.applicationGateways') as "application_gateways",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.resourceState') as "resource_state",
JSON_EXTRACT(properties, '$.managedRules') as "managed_rules",
JSON_EXTRACT(properties, '$.httpListeners') as "http_listeners",
JSON_EXTRACT(properties, '$.pathBasedRules') as "path_based_rules",
JSON_EXTRACT(properties, '$.applicationGatewayForContainers') as "application_gateway_for_containers",
subscriptionId,
resourceGroupName,
policyName
FROM azure.network.web_application_firewall_policies
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.policySettings') as "policy_settings",
json_extract_path_text(properties, '$.customRules') as "custom_rules",
json_extract_path_text(properties, '$.applicationGateways') as "application_gateways",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resourceState') as "resource_state",
json_extract_path_text(properties, '$.managedRules') as "managed_rules",
json_extract_path_text(properties, '$.httpListeners') as "http_listeners",
json_extract_path_text(properties, '$.pathBasedRules') as "path_based_rules",
json_extract_path_text(properties, '$.applicationGatewayForContainers') as "application_gateway_for_containers",
subscriptionId,
resourceGroupName,
policyName
FROM azure.network.web_application_firewall_policies
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
