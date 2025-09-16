--- 
title: vw_software_inventories
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_software_inventories
  - security
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

Creates, updates, deletes, gets or lists a <code>vw_software_inventories</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_software_inventories</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_software_inventories" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.deviceId') as "device_id",
JSON_EXTRACT(properties, '$.osPlatform') as "os_platform",
JSON_EXTRACT(properties, '$.vendor') as "vendor",
JSON_EXTRACT(properties, '$.softwareName') as "software_name",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.endOfSupportStatus') as "end_of_support_status",
JSON_EXTRACT(properties, '$.endOfSupportDate') as "end_of_support_date",
JSON_EXTRACT(properties, '$.numberOfKnownVulnerabilities') as "number_of_known_vulnerabilities",
JSON_EXTRACT(properties, '$.firstSeenAt') as "first_seen_at",
subscriptionId,
resourceGroupName,
resourceNamespace,
resourceType,
resourceName,
softwareName
FROM azure.security.software_inventories
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.deviceId') as "device_id",
json_extract_path_text(properties, '$.osPlatform') as "os_platform",
json_extract_path_text(properties, '$.vendor') as "vendor",
json_extract_path_text(properties, '$.softwareName') as "software_name",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.endOfSupportStatus') as "end_of_support_status",
json_extract_path_text(properties, '$.endOfSupportDate') as "end_of_support_date",
json_extract_path_text(properties, '$.numberOfKnownVulnerabilities') as "number_of_known_vulnerabilities",
json_extract_path_text(properties, '$.firstSeenAt') as "first_seen_at",
subscriptionId,
resourceGroupName,
resourceNamespace,
resourceType,
resourceName,
softwareName
FROM azure.security.software_inventories
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
