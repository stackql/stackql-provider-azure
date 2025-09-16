--- 
title: vw_cloud_service_role_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_cloud_service_role_instances
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

Creates, updates, deletes, gets or lists a <code>vw_cloud_service_role_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_cloud_service_role_instances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_cloud_service_role_instances" /></td></tr>
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
tags as tags,
sku as sku,
JSON_EXTRACT(properties, '$.networkProfile') as "network_profile",
JSON_EXTRACT(properties, '$.instanceView') as "instance_view",
subscriptionId,
resourceGroupName,
cloudServiceName,
roleInstanceName
FROM azure.compute.cloud_service_role_instances
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
tags as tags,
sku as sku,
json_extract_path_text(properties, '$.networkProfile') as "network_profile",
json_extract_path_text(properties, '$.instanceView') as "instance_view",
subscriptionId,
resourceGroupName,
cloudServiceName,
roleInstanceName
FROM azure.compute.cloud_service_role_instances
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND cloudServiceName = 'replace-me';
```

</TabItem>
</Tabs>
