--- 
title: vw_virtual_appliance_skus
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_appliance_skus
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_appliance_skus</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_appliance_skus</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_virtual_appliance_skus" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.vendor') as "vendor",
JSON_EXTRACT(properties, '$.availableVersions') as "available_versions",
JSON_EXTRACT(properties, '$.availableScaleUnits') as "available_scale_units",
subscriptionId,
skuName
FROM azure.network.virtual_appliance_skus
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.vendor') as "vendor",
json_extract_path_text(properties, '$.availableVersions') as "available_versions",
json_extract_path_text(properties, '$.availableScaleUnits') as "available_scale_units",
subscriptionId,
skuName
FROM azure.network.virtual_appliance_skus
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
