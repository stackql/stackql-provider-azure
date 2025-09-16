--- 
title: vw_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_policies
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

Creates, updates, deletes, gets or lists a <code>vw_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.front_door.vw_policies" /></td></tr>
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
etag as etag,
sku as sku,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.policySettings') as "policy_settings",
JSON_EXTRACT(properties, '$.customRules') as "custom_rules",
JSON_EXTRACT(properties, '$.managedRules') as "managed_rules",
JSON_EXTRACT(properties, '$.frontendEndpointLinks') as "frontend_endpoint_links",
JSON_EXTRACT(properties, '$.routingRuleLinks') as "routing_rule_links",
JSON_EXTRACT(properties, '$.securityPolicyLinks') as "security_policy_links",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.resourceState') as "resource_state",
subscriptionId,
resourceGroupName,
policyName
FROM azure.front_door.policies
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
etag as etag,
sku as sku,
type as type,
tags as tags,
json_extract_path_text(properties, '$.policySettings') as "policy_settings",
json_extract_path_text(properties, '$.customRules') as "custom_rules",
json_extract_path_text(properties, '$.managedRules') as "managed_rules",
json_extract_path_text(properties, '$.frontendEndpointLinks') as "frontend_endpoint_links",
json_extract_path_text(properties, '$.routingRuleLinks') as "routing_rule_links",
json_extract_path_text(properties, '$.securityPolicyLinks') as "security_policy_links",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resourceState') as "resource_state",
subscriptionId,
resourceGroupName,
policyName
FROM azure.front_door.policies
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
