--- 
title: vw_firewall_policy_drafts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_firewall_policy_drafts
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

Creates, updates, deletes, gets or lists a <code>vw_firewall_policy_drafts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_firewall_policy_drafts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_firewall_policy_drafts" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.basePolicy') as "base_policy",
JSON_EXTRACT(properties, '$.threatIntelMode') as "threat_intel_mode",
JSON_EXTRACT(properties, '$.threatIntelWhitelist') as "threat_intel_whitelist",
JSON_EXTRACT(properties, '$.insights') as "insights",
JSON_EXTRACT(properties, '$.snat') as "snat",
JSON_EXTRACT(properties, '$.sql') as "sql",
JSON_EXTRACT(properties, '$.dnsSettings') as "dns_settings",
JSON_EXTRACT(properties, '$.explicitProxy') as "explicit_proxy",
JSON_EXTRACT(properties, '$.intrusionDetection') as "intrusion_detection",
subscriptionId,
resourceGroupName,
firewallPolicyName
FROM azure.network.firewall_policy_drafts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND firewallPolicyName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.basePolicy') as "base_policy",
json_extract_path_text(properties, '$.threatIntelMode') as "threat_intel_mode",
json_extract_path_text(properties, '$.threatIntelWhitelist') as "threat_intel_whitelist",
json_extract_path_text(properties, '$.insights') as "insights",
json_extract_path_text(properties, '$.snat') as "snat",
json_extract_path_text(properties, '$.sql') as "sql",
json_extract_path_text(properties, '$.dnsSettings') as "dns_settings",
json_extract_path_text(properties, '$.explicitProxy') as "explicit_proxy",
json_extract_path_text(properties, '$.intrusionDetection') as "intrusion_detection",
subscriptionId,
resourceGroupName,
firewallPolicyName
FROM azure.network.firewall_policy_drafts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND firewallPolicyName = 'replace-me';
```

</TabItem>
</Tabs>
