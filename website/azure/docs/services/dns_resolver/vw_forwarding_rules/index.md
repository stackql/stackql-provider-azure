--- 
title: vw_forwarding_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_forwarding_rules
  - dns_resolver
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

Creates, updates, deletes, gets or lists a <code>vw_forwarding_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_forwarding_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dns_resolver.vw_forwarding_rules" /></td></tr>
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
etag as etag,
systemData as system_data,
JSON_EXTRACT(properties, '$.domainName') as "domain_name",
JSON_EXTRACT(properties, '$.targetDnsServers') as "target_dns_servers",
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.forwardingRuleState') as "forwarding_rule_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
dnsForwardingRulesetName,
forwardingRuleName
FROM azure.dns_resolver.forwarding_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dnsForwardingRulesetName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
systemData as system_data,
json_extract_path_text(properties, '$.domainName') as "domain_name",
json_extract_path_text(properties, '$.targetDnsServers') as "target_dns_servers",
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.forwardingRuleState') as "forwarding_rule_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
dnsForwardingRulesetName,
forwardingRuleName
FROM azure.dns_resolver.forwarding_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dnsForwardingRulesetName = 'replace-me';
```

</TabItem>
</Tabs>
