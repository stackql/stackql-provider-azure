--- 
title: vw_flows
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_flows
  - data_transfer
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

Creates, updates, deletes, gets or lists a <code>vw_flows</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_flows</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_transfer.vw_flows" /></td></tr>
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
plan as plan,
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.connection') as "connection",
JSON_EXTRACT(properties, '$.flowId') as "flow_id",
JSON_EXTRACT(properties, '$.keyVaultUri') as "key_vault_uri",
JSON_EXTRACT(properties, '$.linkStatus') as "link_status",
JSON_EXTRACT(properties, '$.linkedFlowId') as "linked_flow_id",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.storageAccountName') as "storage_account_name",
JSON_EXTRACT(properties, '$.storageAccountId') as "storage_account_id",
JSON_EXTRACT(properties, '$.storageContainerName') as "storage_container_name",
JSON_EXTRACT(properties, '$.serviceBusQueueId') as "service_bus_queue_id",
JSON_EXTRACT(properties, '$.flowType') as "flow_type",
JSON_EXTRACT(properties, '$.dataType') as "data_type",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.policies') as "policies",
JSON_EXTRACT(properties, '$.schema') as "schema",
JSON_EXTRACT(properties, '$.messagingOptions') as "messaging_options",
subscriptionId,
resourceGroupName,
connectionName,
flowName
FROM azure.data_transfer.flows
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND connectionName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
plan as plan,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.connection') as "connection",
json_extract_path_text(properties, '$.flowId') as "flow_id",
json_extract_path_text(properties, '$.keyVaultUri') as "key_vault_uri",
json_extract_path_text(properties, '$.linkStatus') as "link_status",
json_extract_path_text(properties, '$.linkedFlowId') as "linked_flow_id",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.storageAccountName') as "storage_account_name",
json_extract_path_text(properties, '$.storageAccountId') as "storage_account_id",
json_extract_path_text(properties, '$.storageContainerName') as "storage_container_name",
json_extract_path_text(properties, '$.serviceBusQueueId') as "service_bus_queue_id",
json_extract_path_text(properties, '$.flowType') as "flow_type",
json_extract_path_text(properties, '$.dataType') as "data_type",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.policies') as "policies",
json_extract_path_text(properties, '$.schema') as "schema",
json_extract_path_text(properties, '$.messagingOptions') as "messaging_options",
subscriptionId,
resourceGroupName,
connectionName,
flowName
FROM azure.data_transfer.flows
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND connectionName = 'replace-me';
```

</TabItem>
</Tabs>
