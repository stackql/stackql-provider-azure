--- 
title: vw_partners
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_partners
  - management_partner
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

Creates, updates, deletes, gets or lists a <code>vw_partners</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_partners</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.management_partner.vw_partners" /></td></tr>
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
JSON_EXTRACT(properties, '$.partnerId') as "partner_id",
JSON_EXTRACT(properties, '$.partnerName') as "partner_name",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.objectId') as "object_id",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.updatedTime') as "updated_time",
JSON_EXTRACT(properties, '$.createdTime') as "created_time",
JSON_EXTRACT(properties, '$.state') as "state"
FROM azure_extras.management_partner.partners
;
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
json_extract_path_text(properties, '$.partnerId') as "partner_id",
json_extract_path_text(properties, '$.partnerName') as "partner_name",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.objectId') as "object_id",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.updatedTime') as "updated_time",
json_extract_path_text(properties, '$.createdTime') as "created_time",
json_extract_path_text(properties, '$.state') as "state"
FROM azure_extras.management_partner.partners
;
```

</TabItem>
</Tabs>
