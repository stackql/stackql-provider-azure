--- 
title: vw_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_accounts
  - data_lake_analytics
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_lake_analytics.vw_accounts" /></td></tr>
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
id as id,
name as name,
type as type,
JSON_EXTRACT(properties, '$.accountId') as "account_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.endpoint') as "endpoint",
JSON_EXTRACT(properties, '$.defaultDataLakeStoreAccountType') as "default_data_lake_store_account_type",
JSON_EXTRACT(properties, '$.defaultDataLakeStoreAccount') as "default_data_lake_store_account",
JSON_EXTRACT(properties, '$.dataLakeStoreAccounts') as "data_lake_store_accounts",
JSON_EXTRACT(properties, '$.publicDataLakeStoreAccounts') as "public_data_lake_store_accounts",
JSON_EXTRACT(properties, '$.storageAccounts') as "storage_accounts",
JSON_EXTRACT(properties, '$.computePolicies') as "compute_policies",
JSON_EXTRACT(properties, '$.hiveMetastores') as "hive_metastores",
JSON_EXTRACT(properties, '$.virtualNetworkRules') as "virtual_network_rules",
JSON_EXTRACT(properties, '$.firewallRules') as "firewall_rules",
JSON_EXTRACT(properties, '$.firewallState') as "firewall_state",
JSON_EXTRACT(properties, '$.firewallAllowAzureIps') as "firewall_allow_azure_ips",
JSON_EXTRACT(properties, '$.newTier') as "new_tier",
JSON_EXTRACT(properties, '$.currentTier') as "current_tier",
JSON_EXTRACT(properties, '$.maxJobCount') as "max_job_count",
JSON_EXTRACT(properties, '$.maxActiveJobCountPerUser') as "max_active_job_count_per_user",
JSON_EXTRACT(properties, '$.maxQueuedJobCountPerUser') as "max_queued_job_count_per_user",
JSON_EXTRACT(properties, '$.maxJobRunningTimeInMin') as "max_job_running_time_in_min",
JSON_EXTRACT(properties, '$.systemMaxJobCount') as "system_max_job_count",
JSON_EXTRACT(properties, '$.maxDegreeOfParallelism') as "max_degree_of_parallelism",
JSON_EXTRACT(properties, '$.systemMaxDegreeOfParallelism') as "system_max_degree_of_parallelism",
JSON_EXTRACT(properties, '$.maxDegreeOfParallelismPerJob') as "max_degree_of_parallelism_per_job",
JSON_EXTRACT(properties, '$.minPriorityPerJob') as "min_priority_per_job",
JSON_EXTRACT(properties, '$.queryStoreRetention') as "query_store_retention",
JSON_EXTRACT(properties, '$.debugDataAccessLevel') as "debug_data_access_level",
subscriptionId,
resourceGroupName,
accountName
FROM azure.data_lake_analytics.accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.accountId') as "account_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.endpoint') as "endpoint",
json_extract_path_text(properties, '$.defaultDataLakeStoreAccountType') as "default_data_lake_store_account_type",
json_extract_path_text(properties, '$.defaultDataLakeStoreAccount') as "default_data_lake_store_account",
json_extract_path_text(properties, '$.dataLakeStoreAccounts') as "data_lake_store_accounts",
json_extract_path_text(properties, '$.publicDataLakeStoreAccounts') as "public_data_lake_store_accounts",
json_extract_path_text(properties, '$.storageAccounts') as "storage_accounts",
json_extract_path_text(properties, '$.computePolicies') as "compute_policies",
json_extract_path_text(properties, '$.hiveMetastores') as "hive_metastores",
json_extract_path_text(properties, '$.virtualNetworkRules') as "virtual_network_rules",
json_extract_path_text(properties, '$.firewallRules') as "firewall_rules",
json_extract_path_text(properties, '$.firewallState') as "firewall_state",
json_extract_path_text(properties, '$.firewallAllowAzureIps') as "firewall_allow_azure_ips",
json_extract_path_text(properties, '$.newTier') as "new_tier",
json_extract_path_text(properties, '$.currentTier') as "current_tier",
json_extract_path_text(properties, '$.maxJobCount') as "max_job_count",
json_extract_path_text(properties, '$.maxActiveJobCountPerUser') as "max_active_job_count_per_user",
json_extract_path_text(properties, '$.maxQueuedJobCountPerUser') as "max_queued_job_count_per_user",
json_extract_path_text(properties, '$.maxJobRunningTimeInMin') as "max_job_running_time_in_min",
json_extract_path_text(properties, '$.systemMaxJobCount') as "system_max_job_count",
json_extract_path_text(properties, '$.maxDegreeOfParallelism') as "max_degree_of_parallelism",
json_extract_path_text(properties, '$.systemMaxDegreeOfParallelism') as "system_max_degree_of_parallelism",
json_extract_path_text(properties, '$.maxDegreeOfParallelismPerJob') as "max_degree_of_parallelism_per_job",
json_extract_path_text(properties, '$.minPriorityPerJob') as "min_priority_per_job",
json_extract_path_text(properties, '$.queryStoreRetention') as "query_store_retention",
json_extract_path_text(properties, '$.debugDataAccessLevel') as "debug_data_access_level",
subscriptionId,
resourceGroupName,
accountName
FROM azure.data_lake_analytics.accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
