--- 
title: vw_change_data_captures
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_change_data_captures
  - data_factory
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

Creates, updates, deletes, gets or lists a <code>vw_change_data_captures</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_change_data_captures</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_factory.vw_change_data_captures" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.folder') as "folder",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.sourceConnectionsInfo') as "source_connections_info",
JSON_EXTRACT(properties, '$.targetConnectionsInfo') as "target_connections_info",
JSON_EXTRACT(properties, '$.policy') as "policy",
JSON_EXTRACT(properties, '$.allowVNetOverride') as "allow_v_net_override",
JSON_EXTRACT(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
factoryName,
changeDataCaptureName
FROM azure.data_factory.change_data_captures
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND factoryName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
etag as etag,
json_extract_path_text(properties, '$.folder') as "folder",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.sourceConnectionsInfo') as "source_connections_info",
json_extract_path_text(properties, '$.targetConnectionsInfo') as "target_connections_info",
json_extract_path_text(properties, '$.policy') as "policy",
json_extract_path_text(properties, '$.allowVNetOverride') as "allow_v_net_override",
json_extract_path_text(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
factoryName,
changeDataCaptureName
FROM azure.data_factory.change_data_captures
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND factoryName = 'replace-me';
```

</TabItem>
</Tabs>
