--- 
title: vw_jit_network_access_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_jit_network_access_policies
  - security
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

Creates, updates, deletes, gets or lists a <code>vw_jit_network_access_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_jit_network_access_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_jit_network_access_policies" /></td></tr>
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
type as type,
systemData as system_data,
kind as kind,
JSON_EXTRACT(properties, '$.virtualMachines') as "virtual_machines",
JSON_EXTRACT(properties, '$.requests') as "requests",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
ascLocation,
jitNetworkAccessPolicyName
FROM azure.security.jit_network_access_policies
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
systemData as system_data,
kind as kind,
json_extract_path_text(properties, '$.virtualMachines') as "virtual_machines",
json_extract_path_text(properties, '$.requests') as "requests",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
ascLocation,
jitNetworkAccessPolicyName
FROM azure.security.jit_network_access_policies
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
