--- 
title: vw_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_accounts
  - batch
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.batch.vw_accounts" /></td></tr>
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
location as location,
identity as identity,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.accountEndpoint') as "account_endpoint",
JSON_EXTRACT(properties, '$.nodeManagementEndpoint') as "node_management_endpoint",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.poolAllocationMode') as "pool_allocation_mode",
JSON_EXTRACT(properties, '$.keyVaultReference') as "key_vault_reference",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.networkProfile') as "network_profile",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.autoStorage') as "auto_storage",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.dedicatedCoreQuota') as "dedicated_core_quota",
JSON_EXTRACT(properties, '$.lowPriorityCoreQuota') as "low_priority_core_quota",
JSON_EXTRACT(properties, '$.dedicatedCoreQuotaPerVMFamily') as "dedicated_core_quota_per_vm_family",
JSON_EXTRACT(properties, '$.dedicatedCoreQuotaPerVMFamilyEnforced') as "dedicated_core_quota_per_vm_family_enforced",
JSON_EXTRACT(properties, '$.poolQuota') as "pool_quota",
JSON_EXTRACT(properties, '$.activeJobAndJobScheduleQuota') as "active_job_and_job_schedule_quota",
JSON_EXTRACT(properties, '$.allowedAuthenticationModes') as "allowed_authentication_modes",
subscriptionId,
resourceGroupName,
accountName
FROM azure.batch.accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
identity as identity,
type as type,
tags as tags,
json_extract_path_text(properties, '$.accountEndpoint') as "account_endpoint",
json_extract_path_text(properties, '$.nodeManagementEndpoint') as "node_management_endpoint",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.poolAllocationMode') as "pool_allocation_mode",
json_extract_path_text(properties, '$.keyVaultReference') as "key_vault_reference",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.networkProfile') as "network_profile",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.autoStorage') as "auto_storage",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.dedicatedCoreQuota') as "dedicated_core_quota",
json_extract_path_text(properties, '$.lowPriorityCoreQuota') as "low_priority_core_quota",
json_extract_path_text(properties, '$.dedicatedCoreQuotaPerVMFamily') as "dedicated_core_quota_per_vm_family",
json_extract_path_text(properties, '$.dedicatedCoreQuotaPerVMFamilyEnforced') as "dedicated_core_quota_per_vm_family_enforced",
json_extract_path_text(properties, '$.poolQuota') as "pool_quota",
json_extract_path_text(properties, '$.activeJobAndJobScheduleQuota') as "active_job_and_job_schedule_quota",
json_extract_path_text(properties, '$.allowedAuthenticationModes') as "allowed_authentication_modes",
subscriptionId,
resourceGroupName,
accountName
FROM azure.batch.accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
