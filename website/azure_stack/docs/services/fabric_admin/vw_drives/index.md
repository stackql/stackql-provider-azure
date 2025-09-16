--- 
title: vw_drives
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_drives
  - fabric_admin
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

Creates, updates, deletes, gets or lists a <code>vw_drives</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_drives</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.fabric_admin.vw_drives" /></td></tr>
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
JSON_EXTRACT(properties, '$.storageNode') as "storage_node",
JSON_EXTRACT(properties, '$.serialNumber') as "serial_number",
JSON_EXTRACT(properties, '$.healthStatus') as "health_status",
JSON_EXTRACT(properties, '$.operationalStatus') as "operational_status",
JSON_EXTRACT(properties, '$.usage') as "usage",
JSON_EXTRACT(properties, '$.physicalLocation') as "physical_location",
JSON_EXTRACT(properties, '$.model') as "model",
JSON_EXTRACT(properties, '$.firmwareVersion') as "firmware_version",
JSON_EXTRACT(properties, '$.isIndicationEnabled') as "is_indication_enabled",
JSON_EXTRACT(properties, '$.manufacturer') as "manufacturer",
JSON_EXTRACT(properties, '$.storagePool') as "storage_pool",
JSON_EXTRACT(properties, '$.mediaType') as "media_type",
JSON_EXTRACT(properties, '$.capacityGB') as "capacity_gb",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.action') as "action",
subscriptionId,
resourceGroupName,
location,
scaleUnit,
storageSubSystem,
drive
FROM azure_stack.fabric_admin.drives
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me' AND scaleUnit = 'replace-me' AND storageSubSystem = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.storageNode') as "storage_node",
json_extract_path_text(properties, '$.serialNumber') as "serial_number",
json_extract_path_text(properties, '$.healthStatus') as "health_status",
json_extract_path_text(properties, '$.operationalStatus') as "operational_status",
json_extract_path_text(properties, '$.usage') as "usage",
json_extract_path_text(properties, '$.physicalLocation') as "physical_location",
json_extract_path_text(properties, '$.model') as "model",
json_extract_path_text(properties, '$.firmwareVersion') as "firmware_version",
json_extract_path_text(properties, '$.isIndicationEnabled') as "is_indication_enabled",
json_extract_path_text(properties, '$.manufacturer') as "manufacturer",
json_extract_path_text(properties, '$.storagePool') as "storage_pool",
json_extract_path_text(properties, '$.mediaType') as "media_type",
json_extract_path_text(properties, '$.capacityGB') as "capacity_gb",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.action') as "action",
subscriptionId,
resourceGroupName,
location,
scaleUnit,
storageSubSystem,
drive
FROM azure_stack.fabric_admin.drives
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me' AND scaleUnit = 'replace-me' AND storageSubSystem = 'replace-me';
```

</TabItem>
</Tabs>
