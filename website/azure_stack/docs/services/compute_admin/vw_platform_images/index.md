--- 
title: vw_platform_images
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_platform_images
  - compute_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_platform_images</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_platform_images</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.compute_admin.vw_platform_images" /></td></tr>
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
JSON_EXTRACT(properties, '$.osDisk') as "os_disk",
JSON_EXTRACT(properties, '$.dataDisks') as "data_disks",
JSON_EXTRACT(properties, '$.details') as "details",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
location,
publisher,
offer,
sku,
version
FROM azure_stack.compute_admin.platform_images
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
json_extract_path_text(properties, '$.osDisk') as "os_disk",
json_extract_path_text(properties, '$.dataDisks') as "data_disks",
json_extract_path_text(properties, '$.details') as "details",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
location,
publisher,
offer,
sku,
version
FROM azure_stack.compute_admin.platform_images
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
