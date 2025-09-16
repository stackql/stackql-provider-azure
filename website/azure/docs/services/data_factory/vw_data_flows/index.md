--- 
title: vw_data_flows
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_data_flows
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

Creates, updates, deletes, gets or lists a <code>vw_data_flows</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_data_flows</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_factory.vw_data_flows" /></td></tr>
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
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.annotations') as "annotations",
JSON_EXTRACT(properties, '$.folder') as "folder",
subscriptionId,
resourceGroupName,
factoryName,
dataFlowName
FROM azure.data_factory.data_flows
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
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.annotations') as "annotations",
json_extract_path_text(properties, '$.folder') as "folder",
subscriptionId,
resourceGroupName,
factoryName,
dataFlowName
FROM azure.data_factory.data_flows
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND factoryName = 'replace-me';
```

</TabItem>
</Tabs>
