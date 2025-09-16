--- 
title: vw_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_accounts
  - cognitive_services
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cognitive_services.vw_accounts" /></td></tr>
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
kind as kind,
sku as sku,
identity as identity,
systemData as system_data,
tags as tags,
etag as etag,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.endpoint') as "endpoint",
JSON_EXTRACT(properties, '$.internalId') as "internal_id",
JSON_EXTRACT(properties, '$.capabilities') as "capabilities",
JSON_EXTRACT(properties, '$.isMigrated') as "is_migrated",
JSON_EXTRACT(properties, '$.migrationToken') as "migration_token",
JSON_EXTRACT(properties, '$.skuChangeInfo') as "sku_change_info",
JSON_EXTRACT(properties, '$.customSubDomainName') as "custom_sub_domain_name",
JSON_EXTRACT(properties, '$.networkAcls') as "network_acls",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.userOwnedStorage') as "user_owned_storage",
JSON_EXTRACT(properties, '$.amlWorkspace') as "aml_workspace",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.apiProperties') as "api_properties",
JSON_EXTRACT(properties, '$.dateCreated') as "date_created",
JSON_EXTRACT(properties, '$.callRateLimit') as "call_rate_limit",
JSON_EXTRACT(properties, '$.dynamicThrottlingEnabled') as "dynamic_throttling_enabled",
JSON_EXTRACT(properties, '$.quotaLimit') as "quota_limit",
JSON_EXTRACT(properties, '$.restrictOutboundNetworkAccess') as "restrict_outbound_network_access",
JSON_EXTRACT(properties, '$.allowedFqdnList') as "allowed_fqdn_list",
JSON_EXTRACT(properties, '$.disableLocalAuth') as "disable_local_auth",
JSON_EXTRACT(properties, '$.endpoints') as "endpoints",
JSON_EXTRACT(properties, '$.restore') as "restore",
JSON_EXTRACT(properties, '$.deletionDate') as "deletion_date",
JSON_EXTRACT(properties, '$.scheduledPurgeDate') as "scheduled_purge_date",
JSON_EXTRACT(properties, '$.locations') as "locations",
JSON_EXTRACT(properties, '$.commitmentPlanAssociations') as "commitment_plan_associations",
JSON_EXTRACT(properties, '$.abusePenalty') as "abuse_penalty",
JSON_EXTRACT(properties, '$.raiMonitorConfig') as "rai_monitor_config",
subscriptionId,
resourceGroupName,
accountName
FROM azure.cognitive_services.accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
kind as kind,
sku as sku,
identity as identity,
systemData as system_data,
tags as tags,
etag as etag,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.endpoint') as "endpoint",
json_extract_path_text(properties, '$.internalId') as "internal_id",
json_extract_path_text(properties, '$.capabilities') as "capabilities",
json_extract_path_text(properties, '$.isMigrated') as "is_migrated",
json_extract_path_text(properties, '$.migrationToken') as "migration_token",
json_extract_path_text(properties, '$.skuChangeInfo') as "sku_change_info",
json_extract_path_text(properties, '$.customSubDomainName') as "custom_sub_domain_name",
json_extract_path_text(properties, '$.networkAcls') as "network_acls",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.userOwnedStorage') as "user_owned_storage",
json_extract_path_text(properties, '$.amlWorkspace') as "aml_workspace",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.apiProperties') as "api_properties",
json_extract_path_text(properties, '$.dateCreated') as "date_created",
json_extract_path_text(properties, '$.callRateLimit') as "call_rate_limit",
json_extract_path_text(properties, '$.dynamicThrottlingEnabled') as "dynamic_throttling_enabled",
json_extract_path_text(properties, '$.quotaLimit') as "quota_limit",
json_extract_path_text(properties, '$.restrictOutboundNetworkAccess') as "restrict_outbound_network_access",
json_extract_path_text(properties, '$.allowedFqdnList') as "allowed_fqdn_list",
json_extract_path_text(properties, '$.disableLocalAuth') as "disable_local_auth",
json_extract_path_text(properties, '$.endpoints') as "endpoints",
json_extract_path_text(properties, '$.restore') as "restore",
json_extract_path_text(properties, '$.deletionDate') as "deletion_date",
json_extract_path_text(properties, '$.scheduledPurgeDate') as "scheduled_purge_date",
json_extract_path_text(properties, '$.locations') as "locations",
json_extract_path_text(properties, '$.commitmentPlanAssociations') as "commitment_plan_associations",
json_extract_path_text(properties, '$.abusePenalty') as "abuse_penalty",
json_extract_path_text(properties, '$.raiMonitorConfig') as "rai_monitor_config",
subscriptionId,
resourceGroupName,
accountName
FROM azure.cognitive_services.accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
