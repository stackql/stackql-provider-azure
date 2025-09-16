--- 
title: vw_users
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_users
  - api_management
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

Creates, updates, deletes, gets or lists a <code>vw_users</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_users</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_users" /></td></tr>
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
JSON_EXTRACT(properties, '$.firstName') as "first_name",
JSON_EXTRACT(properties, '$.lastName') as "last_name",
JSON_EXTRACT(properties, '$.email') as "email",
JSON_EXTRACT(properties, '$.registrationDate') as "registration_date",
JSON_EXTRACT(properties, '$.groups') as "groups",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.note') as "note",
JSON_EXTRACT(properties, '$.identities') as "identities",
subscriptionId,
resourceGroupName,
serviceName,
userId
FROM azure.api_management.users
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.firstName') as "first_name",
json_extract_path_text(properties, '$.lastName') as "last_name",
json_extract_path_text(properties, '$.email') as "email",
json_extract_path_text(properties, '$.registrationDate') as "registration_date",
json_extract_path_text(properties, '$.groups') as "groups",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.note') as "note",
json_extract_path_text(properties, '$.identities') as "identities",
subscriptionId,
resourceGroupName,
serviceName,
userId
FROM azure.api_management.users
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
