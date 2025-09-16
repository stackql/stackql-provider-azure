--- 
title: vw_slices
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_slices
  - mobile_network
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

Creates, updates, deletes, gets or lists a <code>vw_slices</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_slices</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mobile_network.vw_slices" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.snssai') as "snssai",
JSON_EXTRACT(properties, '$.description') as "description",
subscriptionId,
resourceGroupName,
mobileNetworkName,
sliceName
FROM azure.mobile_network.slices
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND mobileNetworkName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.snssai') as "snssai",
json_extract_path_text(properties, '$.description') as "description",
subscriptionId,
resourceGroupName,
mobileNetworkName,
sliceName
FROM azure.mobile_network.slices
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND mobileNetworkName = 'replace-me';
```

</TabItem>
</Tabs>
