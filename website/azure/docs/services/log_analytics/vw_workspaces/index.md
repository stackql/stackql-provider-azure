--- 
title: vw_workspaces
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workspaces
  - log_analytics
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.log_analytics.vw_workspaces" /></td></tr>
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
etag as etag,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.customerId') as "customer_id",
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.retentionInDays') as "retention_in_days",
JSON_EXTRACT(properties, '$.workspaceCapping') as "workspace_capping",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.modifiedDate') as "modified_date",
JSON_EXTRACT(properties, '$.publicNetworkAccessForIngestion') as "public_network_access_for_ingestion",
JSON_EXTRACT(properties, '$.publicNetworkAccessForQuery') as "public_network_access_for_query",
JSON_EXTRACT(properties, '$.forceCmkForQuery') as "force_cmk_for_query",
JSON_EXTRACT(properties, '$.privateLinkScopedResources') as "private_link_scoped_resources",
JSON_EXTRACT(properties, '$.features') as "features",
JSON_EXTRACT(properties, '$.defaultDataCollectionRuleResourceId') as "default_data_collection_rule_resource_id",
subscriptionId,
resourceGroupName,
workspaceName
FROM azure.log_analytics.workspaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
systemData as system_data,
etag as etag,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.customerId') as "customer_id",
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.retentionInDays') as "retention_in_days",
json_extract_path_text(properties, '$.workspaceCapping') as "workspace_capping",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.modifiedDate') as "modified_date",
json_extract_path_text(properties, '$.publicNetworkAccessForIngestion') as "public_network_access_for_ingestion",
json_extract_path_text(properties, '$.publicNetworkAccessForQuery') as "public_network_access_for_query",
json_extract_path_text(properties, '$.forceCmkForQuery') as "force_cmk_for_query",
json_extract_path_text(properties, '$.privateLinkScopedResources') as "private_link_scoped_resources",
json_extract_path_text(properties, '$.features') as "features",
json_extract_path_text(properties, '$.defaultDataCollectionRuleResourceId') as "default_data_collection_rule_resource_id",
subscriptionId,
resourceGroupName,
workspaceName
FROM azure.log_analytics.workspaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
