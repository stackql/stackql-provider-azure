--- 
title: vw_disks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_disks
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

Creates, updates, deletes, gets or lists a <code>vw_disks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_disks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.compute_admin.vw_disks" /></td></tr>
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
JSON_EXTRACT(properties, '$.diskId') as "disk_id",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.sharePath') as "share_path",
JSON_EXTRACT(properties, '$.actualSizeGB') as "actual_size_gb",
JSON_EXTRACT(properties, '$.provisionSizeGB') as "provision_size_gb",
JSON_EXTRACT(properties, '$.managedBy') as "managed_by",
JSON_EXTRACT(properties, '$.userResourceId') as "user_resource_id",
JSON_EXTRACT(properties, '$.diskType') as "disk_type",
JSON_EXTRACT(properties, '$.diskSku') as "disk_sku",
JSON_EXTRACT(properties, '$.creationSourceUri') as "creation_source_uri",
JSON_EXTRACT(properties, '$.creationOption') as "creation_option",
JSON_EXTRACT(properties, '$.exclusiveAllocatedSize') as "exclusive_allocated_size",
subscriptionId,
location,
diskId
FROM azure_stack.compute_admin.disks
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.diskId') as "disk_id",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.sharePath') as "share_path",
json_extract_path_text(properties, '$.actualSizeGB') as "actual_size_gb",
json_extract_path_text(properties, '$.provisionSizeGB') as "provision_size_gb",
json_extract_path_text(properties, '$.managedBy') as "managed_by",
json_extract_path_text(properties, '$.userResourceId') as "user_resource_id",
json_extract_path_text(properties, '$.diskType') as "disk_type",
json_extract_path_text(properties, '$.diskSku') as "disk_sku",
json_extract_path_text(properties, '$.creationSourceUri') as "creation_source_uri",
json_extract_path_text(properties, '$.creationOption') as "creation_option",
json_extract_path_text(properties, '$.exclusiveAllocatedSize') as "exclusive_allocated_size",
subscriptionId,
location,
diskId
FROM azure_stack.compute_admin.disks
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
