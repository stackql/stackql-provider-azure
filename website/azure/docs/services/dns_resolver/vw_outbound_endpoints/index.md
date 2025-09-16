--- 
title: vw_outbound_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_outbound_endpoints
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

Creates, updates, deletes, gets or lists a <code>vw_outbound_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_outbound_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dns_resolver.vw_outbound_endpoints" /></td></tr>
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
JSON_EXTRACT(properties, '$.subnet') as "subnet",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
subscriptionId,
resourceGroupName,
dnsResolverName,
outboundEndpointName
FROM azure.dns_resolver.outbound_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dnsResolverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
etag as etag,
systemData as system_data,
tags as tags,
json_extract_path_text(properties, '$.subnet') as "subnet",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
subscriptionId,
resourceGroupName,
dnsResolverName,
outboundEndpointName
FROM azure.dns_resolver.outbound_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dnsResolverName = 'replace-me';
```

</TabItem>
</Tabs>
