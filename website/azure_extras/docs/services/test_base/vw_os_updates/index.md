--- 
title: vw_os_updates
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_os_updates
  - test_base
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_os_updates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_os_updates</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.vw_os_updates" /></td></tr>
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
JSON_EXTRACT(properties, '$.osName') as "os_name",
JSON_EXTRACT(properties, '$.release') as "release",
JSON_EXTRACT(properties, '$.flightingRing') as "flighting_ring",
JSON_EXTRACT(properties, '$.buildVersion') as "build_version",
JSON_EXTRACT(properties, '$.buildRevision') as "build_revision",
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.releaseVersionDate') as "release_version_date",
JSON_EXTRACT(properties, '$.inplaceUpgradeBaselineProperties') as "inplace_upgrade_baseline_properties",
JSON_EXTRACT(properties, '$.customImageId') as "custom_image_id",
JSON_EXTRACT(properties, '$.customImageDisplayName') as "custom_image_display_name",
subscriptionId,
resourceGroupName,
testBaseAccountName,
packageName,
osUpdateResourceName,
osUpdateType
FROM azure_extras.test_base.os_updates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me' AND packageName = 'replace-me' AND osUpdateType = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.osName') as "os_name",
json_extract_path_text(properties, '$.release') as "release",
json_extract_path_text(properties, '$.flightingRing') as "flighting_ring",
json_extract_path_text(properties, '$.buildVersion') as "build_version",
json_extract_path_text(properties, '$.buildRevision') as "build_revision",
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.releaseVersionDate') as "release_version_date",
json_extract_path_text(properties, '$.inplaceUpgradeBaselineProperties') as "inplace_upgrade_baseline_properties",
json_extract_path_text(properties, '$.customImageId') as "custom_image_id",
json_extract_path_text(properties, '$.customImageDisplayName') as "custom_image_display_name",
subscriptionId,
resourceGroupName,
testBaseAccountName,
packageName,
osUpdateResourceName,
osUpdateType
FROM azure_extras.test_base.os_updates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me' AND packageName = 'replace-me' AND osUpdateType = 'replace-me';
```

</TabItem>
</Tabs>
