--- 
title: vw_snapshots
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_snapshots
  - app_configuration
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

Creates, updates, deletes, gets or lists a <code>vw_snapshots</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_snapshots</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_configuration.vw_snapshots" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.filters') as "filters",
JSON_EXTRACT(properties, '$.compositionType') as "composition_type",
JSON_EXTRACT(properties, '$.created') as "created",
JSON_EXTRACT(properties, '$.expires') as "expires",
JSON_EXTRACT(properties, '$.retentionPeriod') as "retention_period",
JSON_EXTRACT(properties, '$.size') as "size",
JSON_EXTRACT(properties, '$.itemsCount') as "items_count",
JSON_EXTRACT(properties, '$.tags') as "tags",
JSON_EXTRACT(properties, '$.etag') as "etag",
subscriptionId,
resourceGroupName,
configStoreName,
snapshotName
FROM azure.app_configuration.snapshots
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND configStoreName = 'replace-me' AND snapshotName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.filters') as "filters",
json_extract_path_text(properties, '$.compositionType') as "composition_type",
json_extract_path_text(properties, '$.created') as "created",
json_extract_path_text(properties, '$.expires') as "expires",
json_extract_path_text(properties, '$.retentionPeriod') as "retention_period",
json_extract_path_text(properties, '$.size') as "size",
json_extract_path_text(properties, '$.itemsCount') as "items_count",
json_extract_path_text(properties, '$.tags') as "tags",
json_extract_path_text(properties, '$.etag') as "etag",
subscriptionId,
resourceGroupName,
configStoreName,
snapshotName
FROM azure.app_configuration.snapshots
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND configStoreName = 'replace-me' AND snapshotName = 'replace-me';
```

</TabItem>
</Tabs>
