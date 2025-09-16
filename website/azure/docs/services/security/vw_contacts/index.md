--- 
title: vw_contacts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_contacts
  - security
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

Creates, updates, deletes, gets or lists a <code>vw_contacts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_contacts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_contacts" /></td></tr>
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
JSON_EXTRACT(properties, '$.emails') as "emails",
JSON_EXTRACT(properties, '$.phone') as "phone",
JSON_EXTRACT(properties, '$.isEnabled') as "is_enabled",
JSON_EXTRACT(properties, '$.notificationsSources') as "notifications_sources",
JSON_EXTRACT(properties, '$.notificationsByRole') as "notifications_by_role",
subscriptionId,
securityContactName
FROM azure.security.contacts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.emails') as "emails",
json_extract_path_text(properties, '$.phone') as "phone",
json_extract_path_text(properties, '$.isEnabled') as "is_enabled",
json_extract_path_text(properties, '$.notificationsSources') as "notifications_sources",
json_extract_path_text(properties, '$.notificationsByRole') as "notifications_by_role",
subscriptionId,
securityContactName
FROM azure.security.contacts
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
