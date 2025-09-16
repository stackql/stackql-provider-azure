--- 
title: vw_bgp_peers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_bgp_peers
  - k8s_runtime
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

Creates, updates, deletes, gets or lists a <code>vw_bgp_peers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_bgp_peers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.k8s_runtime.vw_bgp_peers" /></td></tr>
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
JSON_EXTRACT(properties, '$.myAsn') as "my_asn",
JSON_EXTRACT(properties, '$.peerAsn') as "peer_asn",
JSON_EXTRACT(properties, '$.peerAddress') as "peer_address",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
resourceUri,
bgpPeerName
FROM azure.k8s_runtime.bgp_peers
WHERE resourceUri = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.myAsn') as "my_asn",
json_extract_path_text(properties, '$.peerAsn') as "peer_asn",
json_extract_path_text(properties, '$.peerAddress') as "peer_address",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
resourceUri,
bgpPeerName
FROM azure.k8s_runtime.bgp_peers
WHERE resourceUri = 'replace-me';
```

</TabItem>
</Tabs>
