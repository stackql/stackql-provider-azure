--- 
title: vw_extended_zones
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_extended_zones
  - edge_zones
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

Creates, updates, deletes, gets or lists a <code>vw_extended_zones</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_extended_zones</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.edge_zones.vw_extended_zones" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.registrationState') as "registration_state",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.regionalDisplayName') as "regional_display_name",
JSON_EXTRACT(properties, '$.regionType') as "region_type",
JSON_EXTRACT(properties, '$.regionCategory') as "region_category",
JSON_EXTRACT(properties, '$.geography') as "geography",
JSON_EXTRACT(properties, '$.geographyGroup') as "geography_group",
JSON_EXTRACT(properties, '$.longitude') as "longitude",
JSON_EXTRACT(properties, '$.latitude') as "latitude",
JSON_EXTRACT(properties, '$.homeLocation') as "home_location",
subscriptionId,
extendedZoneName
FROM azure.edge_zones.extended_zones
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.registrationState') as "registration_state",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.regionalDisplayName') as "regional_display_name",
json_extract_path_text(properties, '$.regionType') as "region_type",
json_extract_path_text(properties, '$.regionCategory') as "region_category",
json_extract_path_text(properties, '$.geography') as "geography",
json_extract_path_text(properties, '$.geographyGroup') as "geography_group",
json_extract_path_text(properties, '$.longitude') as "longitude",
json_extract_path_text(properties, '$.latitude') as "latitude",
json_extract_path_text(properties, '$.homeLocation') as "home_location",
subscriptionId,
extendedZoneName
FROM azure.edge_zones.extended_zones
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
