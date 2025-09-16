--- 
title: vw_peer_asns
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_peer_asns
  - peering
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

Creates, updates, deletes, gets or lists a <code>vw_peer_asns</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_peer_asns</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.peering.vw_peer_asns" /></td></tr>
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
JSON_EXTRACT(properties, '$.peerAsn') as "peer_asn",
JSON_EXTRACT(properties, '$.peerContactDetail') as "peer_contact_detail",
JSON_EXTRACT(properties, '$.peerName') as "peer_name",
JSON_EXTRACT(properties, '$.validationState') as "validation_state",
JSON_EXTRACT(properties, '$.errorMessage') as "error_message",
subscriptionId,
peerAsnName
FROM azure.peering.peer_asns
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.peerAsn') as "peer_asn",
json_extract_path_text(properties, '$.peerContactDetail') as "peer_contact_detail",
json_extract_path_text(properties, '$.peerName') as "peer_name",
json_extract_path_text(properties, '$.validationState') as "validation_state",
json_extract_path_text(properties, '$.errorMessage') as "error_message",
subscriptionId,
peerAsnName
FROM azure.peering.peer_asns
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
