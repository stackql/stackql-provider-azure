--- 
title: vw_cloud_service_operating_systems_os_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_cloud_service_operating_systems_os_versions
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

Creates, updates, deletes, gets or lists a <code>vw_cloud_service_operating_systems_os_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_cloud_service_operating_systems_os_versions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_cloud_service_operating_systems_os_versions" /></td></tr>
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
JSON_EXTRACT(properties, '$.family') as "family",
JSON_EXTRACT(properties, '$.familyLabel') as "family_label",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.label') as "label",
JSON_EXTRACT(properties, '$.isDefault') as "is_default",
JSON_EXTRACT(properties, '$.isActive') as "is_active",
subscriptionId,
location,
osVersionName
FROM azure.compute.cloud_service_operating_systems_os_versions
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
json_extract_path_text(properties, '$.family') as "family",
json_extract_path_text(properties, '$.familyLabel') as "family_label",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.label') as "label",
json_extract_path_text(properties, '$.isDefault') as "is_default",
json_extract_path_text(properties, '$.isActive') as "is_active",
subscriptionId,
location,
osVersionName
FROM azure.compute.cloud_service_operating_systems_os_versions
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
