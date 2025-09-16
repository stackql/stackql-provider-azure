--- 
title: vw_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_accounts
  - data_lake_store
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_lake_store.vw_accounts" /></td></tr>
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
tags as tags,
identity as identity,
JSON_EXTRACT(properties, '$.accountId') as "account_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.endpoint') as "endpoint",
JSON_EXTRACT(properties, '$.defaultGroup') as "default_group",
JSON_EXTRACT(properties, '$.encryptionConfig') as "encryption_config",
JSON_EXTRACT(properties, '$.encryptionState') as "encryption_state",
JSON_EXTRACT(properties, '$.encryptionProvisioningState') as "encryption_provisioning_state",
JSON_EXTRACT(properties, '$.firewallRules') as "firewall_rules",
JSON_EXTRACT(properties, '$.virtualNetworkRules') as "virtual_network_rules",
JSON_EXTRACT(properties, '$.firewallState') as "firewall_state",
JSON_EXTRACT(properties, '$.firewallAllowAzureIps') as "firewall_allow_azure_ips",
JSON_EXTRACT(properties, '$.trustedIdProviders') as "trusted_id_providers",
JSON_EXTRACT(properties, '$.trustedIdProviderState') as "trusted_id_provider_state",
JSON_EXTRACT(properties, '$.newTier') as "new_tier",
JSON_EXTRACT(properties, '$.currentTier') as "current_tier",
subscriptionId,
resourceGroupName,
accountName
FROM azure.data_lake_store.accounts
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
tags as tags,
identity as identity,
json_extract_path_text(properties, '$.accountId') as "account_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.endpoint') as "endpoint",
json_extract_path_text(properties, '$.defaultGroup') as "default_group",
json_extract_path_text(properties, '$.encryptionConfig') as "encryption_config",
json_extract_path_text(properties, '$.encryptionState') as "encryption_state",
json_extract_path_text(properties, '$.encryptionProvisioningState') as "encryption_provisioning_state",
json_extract_path_text(properties, '$.firewallRules') as "firewall_rules",
json_extract_path_text(properties, '$.virtualNetworkRules') as "virtual_network_rules",
json_extract_path_text(properties, '$.firewallState') as "firewall_state",
json_extract_path_text(properties, '$.firewallAllowAzureIps') as "firewall_allow_azure_ips",
json_extract_path_text(properties, '$.trustedIdProviders') as "trusted_id_providers",
json_extract_path_text(properties, '$.trustedIdProviderState') as "trusted_id_provider_state",
json_extract_path_text(properties, '$.newTier') as "new_tier",
json_extract_path_text(properties, '$.currentTier') as "current_tier",
subscriptionId,
resourceGroupName,
accountName
FROM azure.data_lake_store.accounts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
