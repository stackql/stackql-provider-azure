--- 
title: vw_locations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_locations
  - cosmos_db
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

Creates, updates, deletes, gets or lists a <code>vw_locations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_locations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.vw_locations" /></td></tr>
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
JSON_EXTRACT(properties, '$.supportsAvailabilityZone') as "supports_availability_zone",
JSON_EXTRACT(properties, '$.isResidencyRestricted') as "is_residency_restricted",
JSON_EXTRACT(properties, '$.backupStorageRedundancies') as "backup_storage_redundancies",
JSON_EXTRACT(properties, '$.isSubscriptionRegionAccessAllowedForRegular') as "is_subscription_region_access_allowed_for_regular",
JSON_EXTRACT(properties, '$.isSubscriptionRegionAccessAllowedForAz') as "is_subscription_region_access_allowed_for_az",
JSON_EXTRACT(properties, '$.status') as "status",
subscriptionId,
location
FROM azure.cosmos_db.locations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.supportsAvailabilityZone') as "supports_availability_zone",
json_extract_path_text(properties, '$.isResidencyRestricted') as "is_residency_restricted",
json_extract_path_text(properties, '$.backupStorageRedundancies') as "backup_storage_redundancies",
json_extract_path_text(properties, '$.isSubscriptionRegionAccessAllowedForRegular') as "is_subscription_region_access_allowed_for_regular",
json_extract_path_text(properties, '$.isSubscriptionRegionAccessAllowedForAz') as "is_subscription_region_access_allowed_for_az",
json_extract_path_text(properties, '$.status') as "status",
subscriptionId,
location
FROM azure.cosmos_db.locations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
