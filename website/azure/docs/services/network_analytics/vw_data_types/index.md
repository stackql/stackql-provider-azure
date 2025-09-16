--- 
title: vw_data_types
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_data_types
  - network_analytics
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

Creates, updates, deletes, gets or lists a <code>vw_data_types</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_data_types</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network_analytics.vw_data_types" /></td></tr>
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
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.stateReason') as "state_reason",
JSON_EXTRACT(properties, '$.storageOutputRetention') as "storage_output_retention",
JSON_EXTRACT(properties, '$.databaseCacheRetention') as "database_cache_retention",
JSON_EXTRACT(properties, '$.databaseRetention') as "database_retention",
JSON_EXTRACT(properties, '$.visualizationUrl') as "visualization_url",
subscriptionId,
resourceGroupName,
dataProductName,
dataTypeName
FROM azure.network_analytics.data_types
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dataProductName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.stateReason') as "state_reason",
json_extract_path_text(properties, '$.storageOutputRetention') as "storage_output_retention",
json_extract_path_text(properties, '$.databaseCacheRetention') as "database_cache_retention",
json_extract_path_text(properties, '$.databaseRetention') as "database_retention",
json_extract_path_text(properties, '$.visualizationUrl') as "visualization_url",
subscriptionId,
resourceGroupName,
dataProductName,
dataTypeName
FROM azure.network_analytics.data_types
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dataProductName = 'replace-me';
```

</TabItem>
</Tabs>
