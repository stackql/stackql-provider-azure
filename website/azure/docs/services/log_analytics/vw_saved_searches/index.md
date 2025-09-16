--- 
title: vw_saved_searches
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_saved_searches
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

Creates, updates, deletes, gets or lists a <code>vw_saved_searches</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_saved_searches</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.log_analytics.vw_saved_searches" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.category') as "category",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.query') as "query",
JSON_EXTRACT(properties, '$.functionAlias') as "function_alias",
JSON_EXTRACT(properties, '$.functionParameters') as "function_parameters",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.tags') as "tags",
subscriptionId,
resourceGroupName,
workspaceName,
savedSearchId
FROM azure.log_analytics.saved_searches
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
json_extract_path_text(properties, '$.category') as "category",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.query') as "query",
json_extract_path_text(properties, '$.functionAlias') as "function_alias",
json_extract_path_text(properties, '$.functionParameters') as "function_parameters",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.tags') as "tags",
subscriptionId,
resourceGroupName,
workspaceName,
savedSearchId
FROM azure.log_analytics.saved_searches
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
