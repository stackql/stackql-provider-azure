--- 
title: vw_resource_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_resource_pools
  - vmware_cloud_simple
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_resource_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_resource_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.vmware_cloud_simple.vw_resource_pools" /></td></tr>
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
privateCloudId as private_cloud_id,
type as type,
JSON_EXTRACT(properties, '$.fullName') as "full_name",
subscriptionId,
regionId,
pcName,
resourcePoolName
FROM azure_isv.vmware_cloud_simple.resource_pools
WHERE subscriptionId = 'replace-me' AND regionId = 'replace-me' AND pcName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
privateCloudId as private_cloud_id,
type as type,
json_extract_path_text(properties, '$.fullName') as "full_name",
subscriptionId,
regionId,
pcName,
resourcePoolName
FROM azure_isv.vmware_cloud_simple.resource_pools
WHERE subscriptionId = 'replace-me' AND regionId = 'replace-me' AND pcName = 'replace-me';
```

</TabItem>
</Tabs>
