--- 
title: vw_sql_pool_blob_auditing_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sql_pool_blob_auditing_policies
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

Creates, updates, deletes, gets or lists a <code>vw_sql_pool_blob_auditing_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sql_pool_blob_auditing_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.vw_sql_pool_blob_auditing_policies" /></td></tr>
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
kind as kind,
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.storageEndpoint') as "storage_endpoint",
JSON_EXTRACT(properties, '$.storageAccountAccessKey') as "storage_account_access_key",
JSON_EXTRACT(properties, '$.retentionDays') as "retention_days",
JSON_EXTRACT(properties, '$.auditActionsAndGroups') as "audit_actions_and_groups",
JSON_EXTRACT(properties, '$.storageAccountSubscriptionId') as "storage_account_subscription_id",
JSON_EXTRACT(properties, '$.isStorageSecondaryKeyInUse') as "is_storage_secondary_key_in_use",
JSON_EXTRACT(properties, '$.isAzureMonitorTargetEnabled') as "is_azure_monitor_target_enabled",
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName,
blobAuditingPolicyName
FROM azure.synapse.sql_pool_blob_auditing_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND sqlPoolName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
kind as kind,
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.storageEndpoint') as "storage_endpoint",
json_extract_path_text(properties, '$.storageAccountAccessKey') as "storage_account_access_key",
json_extract_path_text(properties, '$.retentionDays') as "retention_days",
json_extract_path_text(properties, '$.auditActionsAndGroups') as "audit_actions_and_groups",
json_extract_path_text(properties, '$.storageAccountSubscriptionId') as "storage_account_subscription_id",
json_extract_path_text(properties, '$.isStorageSecondaryKeyInUse') as "is_storage_secondary_key_in_use",
json_extract_path_text(properties, '$.isAzureMonitorTargetEnabled') as "is_azure_monitor_target_enabled",
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName,
blobAuditingPolicyName
FROM azure.synapse.sql_pool_blob_auditing_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND sqlPoolName = 'replace-me';
```

</TabItem>
</Tabs>
