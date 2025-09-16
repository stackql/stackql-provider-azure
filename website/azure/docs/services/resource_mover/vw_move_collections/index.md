--- 
title: vw_move_collections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_move_collections
  - resource_mover
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

Creates, updates, deletes, gets or lists a <code>vw_move_collections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_move_collections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.resource_mover.vw_move_collections" /></td></tr>
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
etag as etag,
tags as tags,
identity as identity,
systemData as system_data,
JSON_EXTRACT(properties, '$.sourceRegion') as "source_region",
JSON_EXTRACT(properties, '$.targetRegion') as "target_region",
JSON_EXTRACT(properties, '$.moveRegion') as "move_region",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.moveType') as "move_type",
JSON_EXTRACT(properties, '$.errors') as "errors",
subscriptionId,
resourceGroupName,
moveCollectionName
FROM azure.resource_mover.move_collections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND moveCollectionName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
etag as etag,
tags as tags,
identity as identity,
systemData as system_data,
json_extract_path_text(properties, '$.sourceRegion') as "source_region",
json_extract_path_text(properties, '$.targetRegion') as "target_region",
json_extract_path_text(properties, '$.moveRegion') as "move_region",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.moveType') as "move_type",
json_extract_path_text(properties, '$.errors') as "errors",
subscriptionId,
resourceGroupName,
moveCollectionName
FROM azure.resource_mover.move_collections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND moveCollectionName = 'replace-me';
```

</TabItem>
</Tabs>
