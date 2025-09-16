--- 
title: vw_kusto_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_kusto_pools
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

Creates, updates, deletes, gets or lists a <code>vw_kusto_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_kusto_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.vw_kusto_pools" /></td></tr>
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
sku as sku,
etag as etag,
systemData as system_data,
tags as tags,
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.uri') as "uri",
JSON_EXTRACT(properties, '$.dataIngestionUri') as "data_ingestion_uri",
JSON_EXTRACT(properties, '$.stateReason') as "state_reason",
JSON_EXTRACT(properties, '$.optimizedAutoscale') as "optimized_autoscale",
JSON_EXTRACT(properties, '$.enableStreamingIngest') as "enable_streaming_ingest",
JSON_EXTRACT(properties, '$.enablePurge') as "enable_purge",
JSON_EXTRACT(properties, '$.languageExtensions') as "language_extensions",
JSON_EXTRACT(properties, '$.workspaceUID') as "workspace_uid",
subscriptionId,
resourceGroupName,
workspaceName,
kustoPoolName
FROM azure.synapse.kusto_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
sku as sku,
etag as etag,
systemData as system_data,
tags as tags,
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.uri') as "uri",
json_extract_path_text(properties, '$.dataIngestionUri') as "data_ingestion_uri",
json_extract_path_text(properties, '$.stateReason') as "state_reason",
json_extract_path_text(properties, '$.optimizedAutoscale') as "optimized_autoscale",
json_extract_path_text(properties, '$.enableStreamingIngest') as "enable_streaming_ingest",
json_extract_path_text(properties, '$.enablePurge') as "enable_purge",
json_extract_path_text(properties, '$.languageExtensions') as "language_extensions",
json_extract_path_text(properties, '$.workspaceUID') as "workspace_uid",
subscriptionId,
resourceGroupName,
workspaceName,
kustoPoolName
FROM azure.synapse.kusto_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
