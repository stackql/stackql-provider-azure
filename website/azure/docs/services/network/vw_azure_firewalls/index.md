--- 
title: vw_azure_firewalls
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_azure_firewalls
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_azure_firewalls</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_azure_firewalls</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_azure_firewalls" /></td></tr>
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
zones as zones,
etag as etag,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.applicationRuleCollections') as "application_rule_collections",
JSON_EXTRACT(properties, '$.natRuleCollections') as "nat_rule_collections",
JSON_EXTRACT(properties, '$.networkRuleCollections') as "network_rule_collections",
JSON_EXTRACT(properties, '$.ipConfigurations') as "ip_configurations",
JSON_EXTRACT(properties, '$.managementIpConfiguration') as "management_ip_configuration",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.threatIntelMode') as "threat_intel_mode",
JSON_EXTRACT(properties, '$.virtualHub') as "virtual_hub",
JSON_EXTRACT(properties, '$.firewallPolicy') as "firewall_policy",
JSON_EXTRACT(properties, '$.hubIPAddresses') as "hub_ip_addresses",
JSON_EXTRACT(properties, '$.ipGroups') as "ip_groups",
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.additionalProperties') as "additional_properties",
JSON_EXTRACT(properties, '$.autoscaleConfiguration') as "autoscale_configuration",
subscriptionId,
resourceGroupName,
azureFirewallName
FROM azure.network.azure_firewalls
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
zones as zones,
etag as etag,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.applicationRuleCollections') as "application_rule_collections",
json_extract_path_text(properties, '$.natRuleCollections') as "nat_rule_collections",
json_extract_path_text(properties, '$.networkRuleCollections') as "network_rule_collections",
json_extract_path_text(properties, '$.ipConfigurations') as "ip_configurations",
json_extract_path_text(properties, '$.managementIpConfiguration') as "management_ip_configuration",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.threatIntelMode') as "threat_intel_mode",
json_extract_path_text(properties, '$.virtualHub') as "virtual_hub",
json_extract_path_text(properties, '$.firewallPolicy') as "firewall_policy",
json_extract_path_text(properties, '$.hubIPAddresses') as "hub_ip_addresses",
json_extract_path_text(properties, '$.ipGroups') as "ip_groups",
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.additionalProperties') as "additional_properties",
json_extract_path_text(properties, '$.autoscaleConfiguration') as "autoscale_configuration",
subscriptionId,
resourceGroupName,
azureFirewallName
FROM azure.network.azure_firewalls
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
