--- 
title: vw_dns_forwarding_rulesets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_dns_forwarding_rulesets
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

Creates, updates, deletes, gets or lists a <code>vw_dns_forwarding_rulesets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_dns_forwarding_rulesets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dns_resolver.vw_dns_forwarding_rulesets" /></td></tr>
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
etag as etag,
systemData as system_data,
tags as tags,
JSON_EXTRACT(properties, '$.dnsResolverOutboundEndpoints') as "dns_resolver_outbound_endpoints",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
subscriptionId,
resourceGroupName,
dnsForwardingRulesetName
FROM azure.dns_resolver.dns_forwarding_rulesets
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
etag as etag,
systemData as system_data,
tags as tags,
json_extract_path_text(properties, '$.dnsResolverOutboundEndpoints') as "dns_resolver_outbound_endpoints",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
subscriptionId,
resourceGroupName,
dnsForwardingRulesetName
FROM azure.dns_resolver.dns_forwarding_rulesets
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
