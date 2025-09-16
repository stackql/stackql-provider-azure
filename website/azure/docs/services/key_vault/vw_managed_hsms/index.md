--- 
title: vw_managed_hsms
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_managed_hsms
  - key_vault
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

Creates, updates, deletes, gets or lists a <code>vw_managed_hsms</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_managed_hsms</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.key_vault.vw_managed_hsms" /></td></tr>
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
type as type,
sku as sku,
tags as tags,
systemData as system_data,
identity as identity,
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.initialAdminObjectIds') as "initial_admin_object_ids",
JSON_EXTRACT(properties, '$.hsmUri') as "hsm_uri",
JSON_EXTRACT(properties, '$.enableSoftDelete') as "enable_soft_delete",
JSON_EXTRACT(properties, '$.softDeleteRetentionInDays') as "soft_delete_retention_in_days",
JSON_EXTRACT(properties, '$.enablePurgeProtection') as "enable_purge_protection",
JSON_EXTRACT(properties, '$.createMode') as "create_mode",
JSON_EXTRACT(properties, '$.statusMessage') as "status_message",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.networkAcls') as "network_acls",
JSON_EXTRACT(properties, '$.regions') as "regions",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.scheduledPurgeDate') as "scheduled_purge_date",
JSON_EXTRACT(properties, '$.securityDomainProperties') as "security_domain_properties",
subscriptionId,
resourceGroupName,
name
FROM azure.key_vault.managed_hsms
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
sku as sku,
tags as tags,
systemData as system_data,
identity as identity,
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.initialAdminObjectIds') as "initial_admin_object_ids",
json_extract_path_text(properties, '$.hsmUri') as "hsm_uri",
json_extract_path_text(properties, '$.enableSoftDelete') as "enable_soft_delete",
json_extract_path_text(properties, '$.softDeleteRetentionInDays') as "soft_delete_retention_in_days",
json_extract_path_text(properties, '$.enablePurgeProtection') as "enable_purge_protection",
json_extract_path_text(properties, '$.createMode') as "create_mode",
json_extract_path_text(properties, '$.statusMessage') as "status_message",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.networkAcls') as "network_acls",
json_extract_path_text(properties, '$.regions') as "regions",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.scheduledPurgeDate') as "scheduled_purge_date",
json_extract_path_text(properties, '$.securityDomainProperties') as "security_domain_properties",
subscriptionId,
resourceGroupName,
name
FROM azure.key_vault.managed_hsms
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
