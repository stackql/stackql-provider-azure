--- 
title: vw_vpn_site_links
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_vpn_site_links
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

Creates, updates, deletes, gets or lists a <code>vw_vpn_site_links</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_vpn_site_links</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_vpn_site_links" /></td></tr>
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
etag as etag,
type as type,
JSON_EXTRACT(properties, '$.linkProperties') as "link_properties",
JSON_EXTRACT(properties, '$.ipAddress') as "ip_address",
JSON_EXTRACT(properties, '$.fqdn') as "fqdn",
JSON_EXTRACT(properties, '$.bgpProperties') as "bgp_properties",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
vpnSiteName,
vpnSiteLinkName
FROM azure.network.vpn_site_links
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vpnSiteName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
json_extract_path_text(properties, '$.linkProperties') as "link_properties",
json_extract_path_text(properties, '$.ipAddress') as "ip_address",
json_extract_path_text(properties, '$.fqdn') as "fqdn",
json_extract_path_text(properties, '$.bgpProperties') as "bgp_properties",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
vpnSiteName,
vpnSiteLinkName
FROM azure.network.vpn_site_links
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vpnSiteName = 'replace-me';
```

</TabItem>
</Tabs>
