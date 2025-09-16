--- 
title: vw_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_accounts
  - playwrighttesting
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

Creates, updates, deletes, gets or lists a <code>vw_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.playwrighttesting.vw_accounts" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.dashboardUri') as "dashboard_uri",
JSON_EXTRACT(properties, '$.regionalAffinity') as "regional_affinity",
JSON_EXTRACT(properties, '$.scalableExecution') as "scalable_execution",
JSON_EXTRACT(properties, '$.reporting') as "reporting",
JSON_EXTRACT(properties, '$.localAuth') as "local_auth",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
accountName
FROM azure.playwrighttesting.accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.dashboardUri') as "dashboard_uri",
json_extract_path_text(properties, '$.regionalAffinity') as "regional_affinity",
json_extract_path_text(properties, '$.scalableExecution') as "scalable_execution",
json_extract_path_text(properties, '$.reporting') as "reporting",
json_extract_path_text(properties, '$.localAuth') as "local_auth",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
accountName
FROM azure.playwrighttesting.accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
