--- 
title: vw_asset_filters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_asset_filters
  - media_services
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

Creates, updates, deletes, gets or lists a <code>vw_asset_filters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_asset_filters</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.media_services.vw_asset_filters" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.presentationTimeRange') as "presentation_time_range",
JSON_EXTRACT(properties, '$.firstQuality') as "first_quality",
JSON_EXTRACT(properties, '$.tracks') as "tracks",
subscriptionId,
resourceGroupName,
accountName,
assetName,
filterName
FROM azure.media_services.asset_filters
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND assetName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.presentationTimeRange') as "presentation_time_range",
json_extract_path_text(properties, '$.firstQuality') as "first_quality",
json_extract_path_text(properties, '$.tracks') as "tracks",
subscriptionId,
resourceGroupName,
accountName,
assetName,
filterName
FROM azure.media_services.asset_filters
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND assetName = 'replace-me';
```

</TabItem>
</Tabs>
