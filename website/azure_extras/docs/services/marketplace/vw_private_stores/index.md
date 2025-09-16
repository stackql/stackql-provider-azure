--- 
title: vw_private_stores
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_private_stores
  - marketplace
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_private_stores</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_private_stores</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.marketplace.vw_private_stores" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.availability') as "availability",
JSON_EXTRACT(properties, '$.privateStoreId') as "private_store_id",
JSON_EXTRACT(properties, '$.eTag') as "e_tag",
JSON_EXTRACT(properties, '$.privateStoreName') as "private_store_name",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.isGov') as "is_gov",
JSON_EXTRACT(properties, '$.collectionIds') as "collection_ids",
JSON_EXTRACT(properties, '$.branding') as "branding",
JSON_EXTRACT(properties, '$.notificationsSettings') as "notifications_settings",
privateStoreId
FROM azure_extras.marketplace.private_stores
WHERE privateStoreId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.availability') as "availability",
json_extract_path_text(properties, '$.privateStoreId') as "private_store_id",
json_extract_path_text(properties, '$.eTag') as "e_tag",
json_extract_path_text(properties, '$.privateStoreName') as "private_store_name",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.isGov') as "is_gov",
json_extract_path_text(properties, '$.collectionIds') as "collection_ids",
json_extract_path_text(properties, '$.branding') as "branding",
json_extract_path_text(properties, '$.notificationsSettings') as "notifications_settings",
privateStoreId
FROM azure_extras.marketplace.private_stores
WHERE privateStoreId = 'replace-me';
```

</TabItem>
</Tabs>
