--- 
title: vw_server_automatic_tunings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_server_automatic_tunings
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

Creates, updates, deletes, gets or lists a <code>vw_server_automatic_tunings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_server_automatic_tunings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_server_automatic_tunings" /></td></tr>
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
JSON_EXTRACT(properties, '$.desiredState') as "desired_state",
JSON_EXTRACT(properties, '$.actualState') as "actual_state",
JSON_EXTRACT(properties, '$.options') as "options",
subscriptionId,
resourceGroupName,
serverName
FROM azure.sql.server_automatic_tunings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.desiredState') as "desired_state",
json_extract_path_text(properties, '$.actualState') as "actual_state",
json_extract_path_text(properties, '$.options') as "options",
subscriptionId,
resourceGroupName,
serverName
FROM azure.sql.server_automatic_tunings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
</Tabs>
