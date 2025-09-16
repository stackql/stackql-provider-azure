--- 
title: vw_peerings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_peerings
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

Creates, updates, deletes, gets or lists a <code>vw_peerings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_peerings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.peering.vw_peerings" /></td></tr>
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
location as location,
type as type,
sku as sku,
kind as kind,
tags as tags,
JSON_EXTRACT(properties, '$.direct') as "direct",
JSON_EXTRACT(properties, '$.exchange') as "exchange",
JSON_EXTRACT(properties, '$.peeringLocation') as "peering_location",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
peeringName
FROM azure.peering.peerings
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
sku as sku,
kind as kind,
tags as tags,
json_extract_path_text(properties, '$.direct') as "direct",
json_extract_path_text(properties, '$.exchange') as "exchange",
json_extract_path_text(properties, '$.peeringLocation') as "peering_location",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
peeringName
FROM azure.peering.peerings
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
