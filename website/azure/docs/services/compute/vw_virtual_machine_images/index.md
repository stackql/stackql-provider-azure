--- 
title: vw_virtual_machine_images
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_machine_images
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_machine_images</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_machine_images</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_virtual_machine_images" /></td></tr>
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
name as name,
location as location,
tags as tags,
extendedLocation as extended_location,
JSON_EXTRACT(properties, '$.plan') as "plan",
JSON_EXTRACT(properties, '$.osDiskImage') as "os_disk_image",
JSON_EXTRACT(properties, '$.dataDiskImages') as "data_disk_images",
JSON_EXTRACT(properties, '$.automaticOSUpgradeProperties') as "automatic_os_upgrade_properties",
JSON_EXTRACT(properties, '$.hyperVGeneration') as "hyper_v_generation",
JSON_EXTRACT(properties, '$.disallowed') as "disallowed",
JSON_EXTRACT(properties, '$.features') as "features",
JSON_EXTRACT(properties, '$.architecture') as "architecture",
JSON_EXTRACT(properties, '$.imageDeprecationStatus') as "image_deprecation_status",
subscriptionId,
location,
publisherName,
offer,
skus,
version,
edgeZone
FROM azure.compute.virtual_machine_images
WHERE subscriptionId = 'replace-me' AND location = 'replace-me' AND edgeZone = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
name as name,
location as location,
tags as tags,
extendedLocation as extended_location,
json_extract_path_text(properties, '$.plan') as "plan",
json_extract_path_text(properties, '$.osDiskImage') as "os_disk_image",
json_extract_path_text(properties, '$.dataDiskImages') as "data_disk_images",
json_extract_path_text(properties, '$.automaticOSUpgradeProperties') as "automatic_os_upgrade_properties",
json_extract_path_text(properties, '$.hyperVGeneration') as "hyper_v_generation",
json_extract_path_text(properties, '$.disallowed') as "disallowed",
json_extract_path_text(properties, '$.features') as "features",
json_extract_path_text(properties, '$.architecture') as "architecture",
json_extract_path_text(properties, '$.imageDeprecationStatus') as "image_deprecation_status",
subscriptionId,
location,
publisherName,
offer,
skus,
version,
edgeZone
FROM azure.compute.virtual_machine_images
WHERE subscriptionId = 'replace-me' AND location = 'replace-me' AND edgeZone = 'replace-me';
```

</TabItem>
</Tabs>
