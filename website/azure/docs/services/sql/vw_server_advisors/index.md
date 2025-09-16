--- 
title: vw_server_advisors
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_server_advisors
  - sql
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

Creates, updates, deletes, gets or lists a <code>vw_server_advisors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_server_advisors</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_server_advisors" /></td></tr>
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
location as location,
kind as kind,
JSON_EXTRACT(properties, '$.advisorStatus') as "advisor_status",
JSON_EXTRACT(properties, '$.autoExecuteStatus') as "auto_execute_status",
JSON_EXTRACT(properties, '$.autoExecuteStatusInheritedFrom') as "auto_execute_status_inherited_from",
JSON_EXTRACT(properties, '$.recommendationsStatus') as "recommendations_status",
JSON_EXTRACT(properties, '$.lastChecked') as "last_checked",
JSON_EXTRACT(properties, '$.recommendedActions') as "recommended_actions",
subscriptionId,
resourceGroupName,
serverName,
advisorName
FROM azure.sql.server_advisors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND advisorName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
kind as kind,
json_extract_path_text(properties, '$.advisorStatus') as "advisor_status",
json_extract_path_text(properties, '$.autoExecuteStatus') as "auto_execute_status",
json_extract_path_text(properties, '$.autoExecuteStatusInheritedFrom') as "auto_execute_status_inherited_from",
json_extract_path_text(properties, '$.recommendationsStatus') as "recommendations_status",
json_extract_path_text(properties, '$.lastChecked') as "last_checked",
json_extract_path_text(properties, '$.recommendedActions') as "recommended_actions",
subscriptionId,
resourceGroupName,
serverName,
advisorName
FROM azure.sql.server_advisors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND advisorName = 'replace-me';
```

</TabItem>
</Tabs>
