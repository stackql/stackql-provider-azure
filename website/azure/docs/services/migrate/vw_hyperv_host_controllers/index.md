--- 
title: vw_hyperv_host_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_hyperv_host_controllers
  - migrate
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

Creates, updates, deletes, gets or lists a <code>vw_hyperv_host_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_hyperv_host_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate.vw_hyperv_host_controllers" /></td></tr>
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
JSON_EXTRACT(properties, '$.createdTimestamp') as "created_timestamp",
JSON_EXTRACT(properties, '$.updatedTimestamp') as "updated_timestamp",
JSON_EXTRACT(properties, '$.fqdn') as "fqdn",
JSON_EXTRACT(properties, '$.runAsAccountId') as "run_as_account_id",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.errors') as "errors",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName,
hostName
FROM azure.migrate.hyperv_host_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.createdTimestamp') as "created_timestamp",
json_extract_path_text(properties, '$.updatedTimestamp') as "updated_timestamp",
json_extract_path_text(properties, '$.fqdn') as "fqdn",
json_extract_path_text(properties, '$.runAsAccountId') as "run_as_account_id",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.errors') as "errors",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName,
hostName
FROM azure.migrate.hyperv_host_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me';
```

</TabItem>
</Tabs>
