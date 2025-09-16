--- 
title: vw_virtual_network_links
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_network_links
  - private_dns
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.private_dns.vw_virtual_network_links" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.virtualNetwork') as "virtual_network",
JSON_EXTRACT(properties, '$.registrationEnabled') as "registration_enabled",
JSON_EXTRACT(properties, '$.resolutionPolicy') as "resolution_policy",
JSON_EXTRACT(properties, '$.virtualNetworkLinkState') as "virtual_network_link_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
privateZoneName,
virtualNetworkLinkName
FROM azure.private_dns.virtual_network_links
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND privateZoneName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
etag as etag,
tags as tags,
json_extract_path_text(properties, '$.virtualNetwork') as "virtual_network",
json_extract_path_text(properties, '$.registrationEnabled') as "registration_enabled",
json_extract_path_text(properties, '$.resolutionPolicy') as "resolution_policy",
json_extract_path_text(properties, '$.virtualNetworkLinkState') as "virtual_network_link_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
privateZoneName,
virtualNetworkLinkName
FROM azure.private_dns.virtual_network_links
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND privateZoneName = 'replace-me';
```

</TabItem>
</Tabs>
