--- 
title: vw_location_based_capability_sets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_location_based_capability_sets
  - mysql
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

Creates, updates, deletes, gets or lists a <code>vw_location_based_capability_sets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_location_based_capability_sets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mysql.vw_location_based_capability_sets" /></td></tr>
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
JSON_EXTRACT(properties, '$.supportedGeoBackupRegions') as "supported_geo_backup_regions",
JSON_EXTRACT(properties, '$.supportedFlexibleServerEditions') as "supported_flexible_server_editions",
JSON_EXTRACT(properties, '$.supportedServerVersions') as "supported_server_versions",
subscriptionId,
locationName,
capabilitySetName
FROM azure.mysql.location_based_capability_sets
WHERE subscriptionId = 'replace-me' AND locationName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.supportedGeoBackupRegions') as "supported_geo_backup_regions",
json_extract_path_text(properties, '$.supportedFlexibleServerEditions') as "supported_flexible_server_editions",
json_extract_path_text(properties, '$.supportedServerVersions') as "supported_server_versions",
subscriptionId,
locationName,
capabilitySetName
FROM azure.mysql.location_based_capability_sets
WHERE subscriptionId = 'replace-me' AND locationName = 'replace-me';
```

</TabItem>
</Tabs>
