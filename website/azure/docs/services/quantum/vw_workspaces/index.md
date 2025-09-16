--- 
title: vw_workspaces
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workspaces
  - quantum
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

Creates, updates, deletes, gets or lists a <code>vw_workspaces</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workspaces</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.quantum.vw_workspaces" /></td></tr>
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
identity as identity,
systemData as system_data,
tags as tags,
JSON_EXTRACT(properties, '$.providers') as "providers",
JSON_EXTRACT(properties, '$.usable') as "usable",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.storageAccount') as "storage_account",
JSON_EXTRACT(properties, '$.endpointUri') as "endpoint_uri",
JSON_EXTRACT(properties, '$.apiKeyEnabled') as "api_key_enabled",
subscriptionId,
resourceGroupName,
workspaceName
FROM azure.quantum.workspaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
systemData as system_data,
tags as tags,
json_extract_path_text(properties, '$.providers') as "providers",
json_extract_path_text(properties, '$.usable') as "usable",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.storageAccount') as "storage_account",
json_extract_path_text(properties, '$.endpointUri') as "endpoint_uri",
json_extract_path_text(properties, '$.apiKeyEnabled') as "api_key_enabled",
subscriptionId,
resourceGroupName,
workspaceName
FROM azure.quantum.workspaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
