--- 
title: vw_members
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_members
  - fleet
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

Creates, updates, deletes, gets or lists a <code>vw_members</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_members</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.fleet.vw_members" /></td></tr>
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
eTag as e_tag,
JSON_EXTRACT(properties, '$.clusterResourceId') as "cluster_resource_id",
JSON_EXTRACT(properties, '$.group') as "group",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
fleetName,
fleetMemberName
FROM azure.fleet.members
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND fleetName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
eTag as e_tag,
json_extract_path_text(properties, '$.clusterResourceId') as "cluster_resource_id",
json_extract_path_text(properties, '$.group') as "group",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
fleetName,
fleetMemberName
FROM azure.fleet.members
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND fleetName = 'replace-me';
```

</TabItem>
</Tabs>
