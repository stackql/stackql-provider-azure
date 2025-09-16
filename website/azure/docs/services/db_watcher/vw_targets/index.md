--- 
title: vw_targets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_targets
  - db_watcher
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

Creates, updates, deletes, gets or lists a <code>vw_targets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_targets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.db_watcher.vw_targets" /></td></tr>
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
JSON_EXTRACT(properties, '$.targetType') as "target_type",
JSON_EXTRACT(properties, '$.targetAuthenticationType') as "target_authentication_type",
JSON_EXTRACT(properties, '$.targetVault') as "target_vault",
JSON_EXTRACT(properties, '$.connectionServerName') as "connection_server_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
watcherName,
targetName
FROM azure.db_watcher.targets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND watcherName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.targetType') as "target_type",
json_extract_path_text(properties, '$.targetAuthenticationType') as "target_authentication_type",
json_extract_path_text(properties, '$.targetVault') as "target_vault",
json_extract_path_text(properties, '$.connectionServerName') as "connection_server_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
watcherName,
targetName
FROM azure.db_watcher.targets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND watcherName = 'replace-me';
```

</TabItem>
</Tabs>
