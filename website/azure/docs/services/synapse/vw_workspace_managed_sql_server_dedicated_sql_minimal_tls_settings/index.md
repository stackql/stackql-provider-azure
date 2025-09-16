--- 
title: vw_workspace_managed_sql_server_dedicated_sql_minimal_tls_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workspace_managed_sql_server_dedicated_sql_minimal_tls_settings
  - synapse
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

Creates, updates, deletes, gets or lists a <code>vw_workspace_managed_sql_server_dedicated_sql_minimal_tls_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workspace_managed_sql_server_dedicated_sql_minimal_tls_settings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.vw_workspace_managed_sql_server_dedicated_sql_minimal_tls_settings" /></td></tr>
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
JSON_EXTRACT(properties, '$.minimalTlsVersion') as "minimal_tls_version",
subscriptionId,
resourceGroupName,
workspaceName,
dedicatedSQLminimalTlsSettingsName
FROM azure.synapse.workspace_managed_sql_server_dedicated_sql_minimal_tls_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
json_extract_path_text(properties, '$.minimalTlsVersion') as "minimal_tls_version",
subscriptionId,
resourceGroupName,
workspaceName,
dedicatedSQLminimalTlsSettingsName
FROM azure.synapse.workspace_managed_sql_server_dedicated_sql_minimal_tls_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
