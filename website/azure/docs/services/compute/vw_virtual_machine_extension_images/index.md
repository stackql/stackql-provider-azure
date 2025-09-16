--- 
title: vw_virtual_machine_extension_images
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_machine_extension_images
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_machine_extension_images</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_machine_extension_images</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_virtual_machine_extension_images" /></td></tr>
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
JSON_EXTRACT(properties, '$.operatingSystem') as "operating_system",
JSON_EXTRACT(properties, '$.computeRole') as "compute_role",
JSON_EXTRACT(properties, '$.handlerSchema') as "handler_schema",
JSON_EXTRACT(properties, '$.vmScaleSetEnabled') as "vm_scale_set_enabled",
JSON_EXTRACT(properties, '$.supportsMultipleExtensions') as "supports_multiple_extensions",
subscriptionId,
location,
publisherName,
type,
version
FROM azure.compute.virtual_machine_extension_images
WHERE subscriptionId = 'replace-me' AND location = 'replace-me' AND publisherName = 'replace-me' AND type = 'replace-me' AND version = 'replace-me';
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
json_extract_path_text(properties, '$.operatingSystem') as "operating_system",
json_extract_path_text(properties, '$.computeRole') as "compute_role",
json_extract_path_text(properties, '$.handlerSchema') as "handler_schema",
json_extract_path_text(properties, '$.vmScaleSetEnabled') as "vm_scale_set_enabled",
json_extract_path_text(properties, '$.supportsMultipleExtensions') as "supports_multiple_extensions",
subscriptionId,
location,
publisherName,
type,
version
FROM azure.compute.virtual_machine_extension_images
WHERE subscriptionId = 'replace-me' AND location = 'replace-me' AND publisherName = 'replace-me' AND type = 'replace-me' AND version = 'replace-me';
```

</TabItem>
</Tabs>
