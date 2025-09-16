--- 
title: vw_data_exports
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_data_exports
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

Creates, updates, deletes, gets or lists a <code>vw_data_exports</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_data_exports</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.log_analytics.vw_data_exports" /></td></tr>
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
JSON_EXTRACT(properties, '$.dataExportId') as "data_export_id",
JSON_EXTRACT(properties, '$.tableNames') as "table_names",
JSON_EXTRACT(properties, '$.destination') as "destination",
JSON_EXTRACT(properties, '$.enable') as "enable",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.lastModifiedDate') as "last_modified_date",
subscriptionId,
resourceGroupName,
workspaceName,
dataExportName
FROM azure.log_analytics.data_exports
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.dataExportId') as "data_export_id",
json_extract_path_text(properties, '$.tableNames') as "table_names",
json_extract_path_text(properties, '$.destination') as "destination",
json_extract_path_text(properties, '$.enable') as "enable",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.lastModifiedDate') as "last_modified_date",
subscriptionId,
resourceGroupName,
workspaceName,
dataExportName
FROM azure.log_analytics.data_exports
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
