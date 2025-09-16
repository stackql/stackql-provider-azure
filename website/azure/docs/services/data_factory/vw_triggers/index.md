--- 
title: vw_triggers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_triggers
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

Creates, updates, deletes, gets or lists a <code>vw_triggers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_triggers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_factory.vw_triggers" /></td></tr>
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
JSON_EXTRACT(properties, '$.runtimeState') as "runtime_state",
JSON_EXTRACT(properties, '$.annotations') as "annotations",
subscriptionId,
resourceGroupName,
factoryName,
triggerName
FROM azure.data_factory.triggers
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
json_extract_path_text(properties, '$.runtimeState') as "runtime_state",
json_extract_path_text(properties, '$.annotations') as "annotations",
subscriptionId,
resourceGroupName,
factoryName,
triggerName
FROM azure.data_factory.triggers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND factoryName = 'replace-me';
```

</TabItem>
</Tabs>
