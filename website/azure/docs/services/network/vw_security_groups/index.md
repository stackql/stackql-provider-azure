--- 
title: vw_security_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_security_groups
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

Creates, updates, deletes, gets or lists a <code>vw_security_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_security_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_security_groups" /></td></tr>
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
JSON_EXTRACT(properties, '$.flushConnection') as "flush_connection",
JSON_EXTRACT(properties, '$.securityRules') as "security_rules",
JSON_EXTRACT(properties, '$.defaultSecurityRules') as "default_security_rules",
JSON_EXTRACT(properties, '$.networkInterfaces') as "network_interfaces",
JSON_EXTRACT(properties, '$.subnets') as "subnets",
JSON_EXTRACT(properties, '$.flowLogs') as "flow_logs",
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
networkSecurityGroupName
FROM azure.network.security_groups
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
json_extract_path_text(properties, '$.flushConnection') as "flush_connection",
json_extract_path_text(properties, '$.securityRules') as "security_rules",
json_extract_path_text(properties, '$.defaultSecurityRules') as "default_security_rules",
json_extract_path_text(properties, '$.networkInterfaces') as "network_interfaces",
json_extract_path_text(properties, '$.subnets') as "subnets",
json_extract_path_text(properties, '$.flowLogs') as "flow_logs",
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
networkSecurityGroupName
FROM azure.network.security_groups
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
