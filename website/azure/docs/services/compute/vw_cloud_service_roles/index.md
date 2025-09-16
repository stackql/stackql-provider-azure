--- 
title: vw_cloud_service_roles
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_cloud_service_roles
  - compute
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

Creates, updates, deletes, gets or lists a <code>vw_cloud_service_roles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_cloud_service_roles</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_cloud_service_roles" /></td></tr>
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
sku as sku,
JSON_EXTRACT(properties, '$.uniqueId') as "unique_id",
subscriptionId,
resourceGroupName,
cloudServiceName,
roleName
FROM azure.compute.cloud_service_roles
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND cloudServiceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
sku as sku,
json_extract_path_text(properties, '$.uniqueId') as "unique_id",
subscriptionId,
resourceGroupName,
cloudServiceName,
roleName
FROM azure.compute.cloud_service_roles
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND cloudServiceName = 'replace-me';
```

</TabItem>
</Tabs>
