--- 
title: vw_authorization_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_authorization_rules
  - notification_hubs
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

Creates, updates, deletes, gets or lists a <code>vw_authorization_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_authorization_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.notification_hubs.vw_authorization_rules" /></td></tr>
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
JSON_EXTRACT(properties, '$.rights') as "rights",
JSON_EXTRACT(properties, '$.primaryKey') as "primary_key",
JSON_EXTRACT(properties, '$.secondaryKey') as "secondary_key",
JSON_EXTRACT(properties, '$.keyName') as "key_name",
JSON_EXTRACT(properties, '$.modifiedTime') as "modified_time",
JSON_EXTRACT(properties, '$.createdTime') as "created_time",
JSON_EXTRACT(properties, '$.claimType') as "claim_type",
JSON_EXTRACT(properties, '$.claimValue') as "claim_value",
JSON_EXTRACT(properties, '$.revision') as "revision",
subscriptionId,
resourceGroupName,
namespaceName,
notificationHubName,
authorizationRuleName
FROM azure.notification_hubs.authorization_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND namespaceName = 'replace-me' AND notificationHubName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.rights') as "rights",
json_extract_path_text(properties, '$.primaryKey') as "primary_key",
json_extract_path_text(properties, '$.secondaryKey') as "secondary_key",
json_extract_path_text(properties, '$.keyName') as "key_name",
json_extract_path_text(properties, '$.modifiedTime') as "modified_time",
json_extract_path_text(properties, '$.createdTime') as "created_time",
json_extract_path_text(properties, '$.claimType') as "claim_type",
json_extract_path_text(properties, '$.claimValue') as "claim_value",
json_extract_path_text(properties, '$.revision') as "revision",
subscriptionId,
resourceGroupName,
namespaceName,
notificationHubName,
authorizationRuleName
FROM azure.notification_hubs.authorization_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND namespaceName = 'replace-me' AND notificationHubName = 'replace-me';
```

</TabItem>
</Tabs>
