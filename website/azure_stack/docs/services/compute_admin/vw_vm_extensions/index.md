--- 
title: vw_vm_extensions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_vm_extensions
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

Creates, updates, deletes, gets or lists a <code>vw_vm_extensions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_vm_extensions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.compute_admin.vw_vm_extensions" /></td></tr>
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
JSON_EXTRACT(properties, '$.vmOsType') as "vm_os_type",
JSON_EXTRACT(properties, '$.publisher') as "publisher",
JSON_EXTRACT(properties, '$.computeRole') as "compute_role",
JSON_EXTRACT(properties, '$.vmScaleSetEnabled') as "vm_scale_set_enabled",
JSON_EXTRACT(properties, '$.supportMultipleExtensions') as "support_multiple_extensions",
JSON_EXTRACT(properties, '$.isSystemExtension') as "is_system_extension",
JSON_EXTRACT(properties, '$.sourceBlob') as "source_blob",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
location,
publisher,
type,
version
FROM azure_stack.compute_admin.vm_extensions
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
json_extract_path_text(properties, '$.vmOsType') as "vm_os_type",
json_extract_path_text(properties, '$.publisher') as "publisher",
json_extract_path_text(properties, '$.computeRole') as "compute_role",
json_extract_path_text(properties, '$.vmScaleSetEnabled') as "vm_scale_set_enabled",
json_extract_path_text(properties, '$.supportMultipleExtensions') as "support_multiple_extensions",
json_extract_path_text(properties, '$.isSystemExtension') as "is_system_extension",
json_extract_path_text(properties, '$.sourceBlob') as "source_blob",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
location,
publisher,
type,
version
FROM azure_stack.compute_admin.vm_extensions
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
