--- 
title: vw_security_policies_interfaces
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_security_policies_interfaces
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

Creates, updates, deletes, gets or lists a <code>vw_security_policies_interfaces</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_security_policies_interfaces</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_networking.vw_security_policies_interfaces" /></td></tr>
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
JSON_EXTRACT(properties, '$.policyType') as "policy_type",
JSON_EXTRACT(properties, '$.wafPolicy') as "waf_policy",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
trafficControllerName,
securityPolicyName
FROM azure.service_networking.security_policies_interfaces
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND trafficControllerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.policyType') as "policy_type",
json_extract_path_text(properties, '$.wafPolicy') as "waf_policy",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
trafficControllerName,
securityPolicyName
FROM azure.service_networking.security_policies_interfaces
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND trafficControllerName = 'replace-me';
```

</TabItem>
</Tabs>
