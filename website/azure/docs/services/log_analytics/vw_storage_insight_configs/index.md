--- 
title: vw_storage_insight_configs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_storage_insight_configs
  - log_analytics
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

Creates, updates, deletes, gets or lists a <code>vw_storage_insight_configs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_storage_insight_configs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.log_analytics.vw_storage_insight_configs" /></td></tr>
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
eTag as e_tag,
tags as tags,
JSON_EXTRACT(properties, '$.containers') as "containers",
JSON_EXTRACT(properties, '$.tables') as "tables",
JSON_EXTRACT(properties, '$.storageAccount') as "storage_account",
JSON_EXTRACT(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
workspaceName,
storageInsightName
FROM azure.log_analytics.storage_insight_configs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
eTag as e_tag,
tags as tags,
json_extract_path_text(properties, '$.containers') as "containers",
json_extract_path_text(properties, '$.tables') as "tables",
json_extract_path_text(properties, '$.storageAccount') as "storage_account",
json_extract_path_text(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
workspaceName,
storageInsightName
FROM azure.log_analytics.storage_insight_configs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
