--- 
title: vw_tenant_configuration_sync_states
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_tenant_configuration_sync_states
  - api_management
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

Creates, updates, deletes, gets or lists a <code>vw_tenant_configuration_sync_states</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_tenant_configuration_sync_states</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_tenant_configuration_sync_states" /></td></tr>
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
JSON_EXTRACT(properties, '$.branch') as "branch",
JSON_EXTRACT(properties, '$.commitId') as "commit_id",
JSON_EXTRACT(properties, '$.isExport') as "is_export",
JSON_EXTRACT(properties, '$.isSynced') as "is_synced",
JSON_EXTRACT(properties, '$.isGitEnabled') as "is_git_enabled",
JSON_EXTRACT(properties, '$.syncDate') as "sync_date",
JSON_EXTRACT(properties, '$.configurationChangeDate') as "configuration_change_date",
JSON_EXTRACT(properties, '$.lastOperationId') as "last_operation_id",
subscriptionId,
resourceGroupName,
serviceName,
configurationName
FROM azure.api_management.tenant_configuration_sync_states
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND configurationName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.branch') as "branch",
json_extract_path_text(properties, '$.commitId') as "commit_id",
json_extract_path_text(properties, '$.isExport') as "is_export",
json_extract_path_text(properties, '$.isSynced') as "is_synced",
json_extract_path_text(properties, '$.isGitEnabled') as "is_git_enabled",
json_extract_path_text(properties, '$.syncDate') as "sync_date",
json_extract_path_text(properties, '$.configurationChangeDate') as "configuration_change_date",
json_extract_path_text(properties, '$.lastOperationId') as "last_operation_id",
subscriptionId,
resourceGroupName,
serviceName,
configurationName
FROM azure.api_management.tenant_configuration_sync_states
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND configurationName = 'replace-me';
```

</TabItem>
</Tabs>
