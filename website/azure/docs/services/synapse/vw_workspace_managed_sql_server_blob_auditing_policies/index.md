--- 
title: vw_workspace_managed_sql_server_blob_auditing_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workspace_managed_sql_server_blob_auditing_policies
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

Creates, updates, deletes, gets or lists a <code>vw_workspace_managed_sql_server_blob_auditing_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workspace_managed_sql_server_blob_auditing_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.vw_workspace_managed_sql_server_blob_auditing_policies" /></td></tr>
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
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.storageEndpoint') as "storage_endpoint",
JSON_EXTRACT(properties, '$.storageAccountAccessKey') as "storage_account_access_key",
JSON_EXTRACT(properties, '$.retentionDays') as "retention_days",
JSON_EXTRACT(properties, '$.auditActionsAndGroups') as "audit_actions_and_groups",
JSON_EXTRACT(properties, '$.storageAccountSubscriptionId') as "storage_account_subscription_id",
JSON_EXTRACT(properties, '$.isStorageSecondaryKeyInUse') as "is_storage_secondary_key_in_use",
JSON_EXTRACT(properties, '$.isAzureMonitorTargetEnabled') as "is_azure_monitor_target_enabled",
JSON_EXTRACT(properties, '$.queueDelayMs') as "queue_delay_ms",
JSON_EXTRACT(properties, '$.isDevopsAuditEnabled') as "is_devops_audit_enabled",
subscriptionId,
resourceGroupName,
workspaceName,
blobAuditingPolicyName
FROM azure.synapse.workspace_managed_sql_server_blob_auditing_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.storageEndpoint') as "storage_endpoint",
json_extract_path_text(properties, '$.storageAccountAccessKey') as "storage_account_access_key",
json_extract_path_text(properties, '$.retentionDays') as "retention_days",
json_extract_path_text(properties, '$.auditActionsAndGroups') as "audit_actions_and_groups",
json_extract_path_text(properties, '$.storageAccountSubscriptionId') as "storage_account_subscription_id",
json_extract_path_text(properties, '$.isStorageSecondaryKeyInUse') as "is_storage_secondary_key_in_use",
json_extract_path_text(properties, '$.isAzureMonitorTargetEnabled') as "is_azure_monitor_target_enabled",
json_extract_path_text(properties, '$.queueDelayMs') as "queue_delay_ms",
json_extract_path_text(properties, '$.isDevopsAuditEnabled') as "is_devops_audit_enabled",
subscriptionId,
resourceGroupName,
workspaceName,
blobAuditingPolicyName
FROM azure.synapse.workspace_managed_sql_server_blob_auditing_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
