--- 
title: vw_throughput_pool_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_throughput_pool_accounts
  - cosmos_db
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

Creates, updates, deletes, gets or lists a <code>vw_throughput_pool_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_throughput_pool_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.vw_throughput_pool_accounts" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.accountResourceIdentifier') as "account_resource_identifier",
JSON_EXTRACT(properties, '$.accountLocation') as "account_location",
JSON_EXTRACT(properties, '$.accountInstanceId') as "account_instance_id",
subscriptionId,
resourceGroupName,
throughputPoolName,
throughputPoolAccountName
FROM azure.cosmos_db.throughput_pool_accounts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND throughputPoolName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.accountResourceIdentifier') as "account_resource_identifier",
json_extract_path_text(properties, '$.accountLocation') as "account_location",
json_extract_path_text(properties, '$.accountInstanceId') as "account_instance_id",
subscriptionId,
resourceGroupName,
throughputPoolName,
throughputPoolAccountName
FROM azure.cosmos_db.throughput_pool_accounts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND throughputPoolName = 'replace-me';
```

</TabItem>
</Tabs>
