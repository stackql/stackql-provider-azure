--- 
title: vw_failover_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_failover_groups
  - azure_arc_data
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

Creates, updates, deletes, gets or lists a <code>vw_failover_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_failover_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.azure_arc_data.vw_failover_groups" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.partnerManagedInstanceId') as "partner_managed_instance_id",
JSON_EXTRACT(properties, '$.spec') as "spec",
JSON_EXTRACT(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
sqlManagedInstanceName,
failoverGroupName
FROM azure.azure_arc_data.failover_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND sqlManagedInstanceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.partnerManagedInstanceId') as "partner_managed_instance_id",
json_extract_path_text(properties, '$.spec') as "spec",
json_extract_path_text(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
sqlManagedInstanceName,
failoverGroupName
FROM azure.azure_arc_data.failover_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND sqlManagedInstanceName = 'replace-me';
```

</TabItem>
</Tabs>
