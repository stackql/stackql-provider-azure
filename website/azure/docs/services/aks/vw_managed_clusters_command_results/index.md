--- 
title: vw_managed_clusters_command_results
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_managed_clusters_command_results
  - aks
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

Creates, updates, deletes, gets or lists a <code>vw_managed_clusters_command_results</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_managed_clusters_command_results</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.aks.vw_managed_clusters_command_results" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.exitCode') as "exit_code",
JSON_EXTRACT(properties, '$.startedAt') as "started_at",
JSON_EXTRACT(properties, '$.finishedAt') as "finished_at",
JSON_EXTRACT(properties, '$.logs') as "logs",
JSON_EXTRACT(properties, '$.reason') as "reason",
subscriptionId,
resourceGroupName,
resourceName,
commandId
FROM azure.aks.managed_clusters_command_results
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me' AND commandId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.exitCode') as "exit_code",
json_extract_path_text(properties, '$.startedAt') as "started_at",
json_extract_path_text(properties, '$.finishedAt') as "finished_at",
json_extract_path_text(properties, '$.logs') as "logs",
json_extract_path_text(properties, '$.reason') as "reason",
subscriptionId,
resourceGroupName,
resourceName,
commandId
FROM azure.aks.managed_clusters_command_results
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me' AND commandId = 'replace-me';
```

</TabItem>
</Tabs>
