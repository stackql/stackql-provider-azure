--- 
title: vw_virtual_network_links
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_network_links
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_network_links</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_network_links</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dns_resolver.vw_virtual_network_links" /></td></tr>
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
JSON_EXTRACT(properties, '$.virtualNetwork') as "virtual_network",
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
dnsForwardingRulesetName,
virtualNetworkLinkName
FROM azure.dns_resolver.virtual_network_links
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dnsForwardingRulesetName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
systemData as system_data,
json_extract_path_text(properties, '$.virtualNetwork') as "virtual_network",
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
dnsForwardingRulesetName,
virtualNetworkLinkName
FROM azure.dns_resolver.virtual_network_links
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dnsForwardingRulesetName = 'replace-me';
```

</TabItem>
</Tabs>
