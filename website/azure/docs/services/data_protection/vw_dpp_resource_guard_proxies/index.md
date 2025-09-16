--- 
title: vw_dpp_resource_guard_proxies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_dpp_resource_guard_proxies
  - data_protection
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

Creates, updates, deletes, gets or lists a <code>vw_dpp_resource_guard_proxies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_dpp_resource_guard_proxies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_protection.vw_dpp_resource_guard_proxies" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.resourceGuardResourceId') as "resource_guard_resource_id",
JSON_EXTRACT(properties, '$.resourceGuardOperationDetails') as "resource_guard_operation_details",
JSON_EXTRACT(properties, '$.lastUpdatedTime') as "last_updated_time",
JSON_EXTRACT(properties, '$.description') as "description",
subscriptionId,
resourceGroupName,
vaultName,
resourceGuardProxyName
FROM azure.data_protection.dpp_resource_guard_proxies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.resourceGuardResourceId') as "resource_guard_resource_id",
json_extract_path_text(properties, '$.resourceGuardOperationDetails') as "resource_guard_operation_details",
json_extract_path_text(properties, '$.lastUpdatedTime') as "last_updated_time",
json_extract_path_text(properties, '$.description') as "description",
subscriptionId,
resourceGroupName,
vaultName,
resourceGuardProxyName
FROM azure.data_protection.dpp_resource_guard_proxies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
</Tabs>
