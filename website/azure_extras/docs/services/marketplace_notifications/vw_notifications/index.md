--- 
title: vw_notifications
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_notifications
  - marketplace_notifications
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

Creates, updates, deletes, gets or lists a <code>vw_notifications</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_notifications</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.marketplace_notifications.vw_notifications" /></td></tr>
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
JSON_EXTRACT(properties, '$.offerId') as "offer_id",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.offerDisplayName') as "offer_display_name",
JSON_EXTRACT(properties, '$.principalId') as "principal_id",
subscription,
notification,
principalId
FROM azure_extras.marketplace_notifications.notifications
WHERE subscription = 'replace-me' AND principalId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.offerId') as "offer_id",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.offerDisplayName') as "offer_display_name",
json_extract_path_text(properties, '$.principalId') as "principal_id",
subscription,
notification,
principalId
FROM azure_extras.marketplace_notifications.notifications
WHERE subscription = 'replace-me' AND principalId = 'replace-me';
```

</TabItem>
</Tabs>
