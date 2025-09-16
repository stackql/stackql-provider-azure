--- 
title: vw_storage_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_storage_accounts
  - storage_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_storage_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_storage_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.storage_admin.vw_storage_accounts" /></td></tr>
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
kind as kind,
tags as tags,
type as type,
JSON_EXTRACT(properties, '$.tenantViewId') as "tenant_view_id",
JSON_EXTRACT(properties, '$.accountType') as "account_type",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.primaryEndpoints') as "primary_endpoints",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.primaryLocation') as "primary_location",
JSON_EXTRACT(properties, '$.faultDomain') as "fault_domain",
JSON_EXTRACT(properties, '$.statusOfPrimary') as "status_of_primary",
JSON_EXTRACT(properties, '$.tenantSubscriptionId') as "tenant_subscription_id",
JSON_EXTRACT(properties, '$.tenantStorageAccountName') as "tenant_storage_account_name",
JSON_EXTRACT(properties, '$.tenantResourceGroupName') as "tenant_resource_group_name",
JSON_EXTRACT(properties, '$.deletedTime') as "deleted_time",
JSON_EXTRACT(properties, '$.accountStatus') as "account_status",
JSON_EXTRACT(properties, '$.accountId') as "account_id",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.supportsHttpsTrafficOnly') as "supports_https_traffic_only",
JSON_EXTRACT(properties, '$.accessTier') as "access_tier",
JSON_EXTRACT(properties, '$.healthState') as "health_state",
subscriptionId,
location,
accountId
FROM azure_stack.storage_admin.storage_accounts
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
kind as kind,
tags as tags,
type as type,
json_extract_path_text(properties, '$.tenantViewId') as "tenant_view_id",
json_extract_path_text(properties, '$.accountType') as "account_type",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.primaryEndpoints') as "primary_endpoints",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.primaryLocation') as "primary_location",
json_extract_path_text(properties, '$.faultDomain') as "fault_domain",
json_extract_path_text(properties, '$.statusOfPrimary') as "status_of_primary",
json_extract_path_text(properties, '$.tenantSubscriptionId') as "tenant_subscription_id",
json_extract_path_text(properties, '$.tenantStorageAccountName') as "tenant_storage_account_name",
json_extract_path_text(properties, '$.tenantResourceGroupName') as "tenant_resource_group_name",
json_extract_path_text(properties, '$.deletedTime') as "deleted_time",
json_extract_path_text(properties, '$.accountStatus') as "account_status",
json_extract_path_text(properties, '$.accountId') as "account_id",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.supportsHttpsTrafficOnly') as "supports_https_traffic_only",
json_extract_path_text(properties, '$.accessTier') as "access_tier",
json_extract_path_text(properties, '$.healthState') as "health_state",
subscriptionId,
location,
accountId
FROM azure_stack.storage_admin.storage_accounts
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
