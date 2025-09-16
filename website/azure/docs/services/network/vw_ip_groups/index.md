--- 
title: vw_ip_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_ip_groups
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

Creates, updates, deletes, gets or lists a <code>vw_ip_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_ip_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_ip_groups" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.ipAddresses') as "ip_addresses",
JSON_EXTRACT(properties, '$.firewalls') as "firewalls",
JSON_EXTRACT(properties, '$.firewallPolicies') as "firewall_policies",
subscriptionId,
resourceGroupName,
ipGroupsName
FROM azure.network.ip_groups
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
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.ipAddresses') as "ip_addresses",
json_extract_path_text(properties, '$.firewalls') as "firewalls",
json_extract_path_text(properties, '$.firewallPolicies') as "firewall_policies",
subscriptionId,
resourceGroupName,
ipGroupsName
FROM azure.network.ip_groups
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
