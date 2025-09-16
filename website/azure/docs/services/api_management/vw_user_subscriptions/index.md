--- 
title: vw_user_subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_user_subscriptions
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

Creates, updates, deletes, gets or lists a <code>vw_user_subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_user_subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_user_subscriptions" /></td></tr>
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
JSON_EXTRACT(properties, '$.ownerId') as "owner_id",
JSON_EXTRACT(properties, '$.scope') as "scope",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.startDate') as "start_date",
JSON_EXTRACT(properties, '$.expirationDate') as "expiration_date",
JSON_EXTRACT(properties, '$.endDate') as "end_date",
JSON_EXTRACT(properties, '$.notificationDate') as "notification_date",
JSON_EXTRACT(properties, '$.primaryKey') as "primary_key",
JSON_EXTRACT(properties, '$.secondaryKey') as "secondary_key",
JSON_EXTRACT(properties, '$.stateComment') as "state_comment",
JSON_EXTRACT(properties, '$.allowTracing') as "allow_tracing",
subscriptionId,
resourceGroupName,
serviceName,
userId,
sid
FROM azure.api_management.user_subscriptions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND userId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.ownerId') as "owner_id",
json_extract_path_text(properties, '$.scope') as "scope",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.startDate') as "start_date",
json_extract_path_text(properties, '$.expirationDate') as "expiration_date",
json_extract_path_text(properties, '$.endDate') as "end_date",
json_extract_path_text(properties, '$.notificationDate') as "notification_date",
json_extract_path_text(properties, '$.primaryKey') as "primary_key",
json_extract_path_text(properties, '$.secondaryKey') as "secondary_key",
json_extract_path_text(properties, '$.stateComment') as "state_comment",
json_extract_path_text(properties, '$.allowTracing') as "allow_tracing",
subscriptionId,
resourceGroupName,
serviceName,
userId,
sid
FROM azure.api_management.user_subscriptions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND userId = 'replace-me';
```

</TabItem>
</Tabs>
