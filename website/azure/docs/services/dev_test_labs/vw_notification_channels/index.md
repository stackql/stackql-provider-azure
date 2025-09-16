--- 
title: vw_notification_channels
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_notification_channels
  - dev_test_labs
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

Creates, updates, deletes, gets or lists a <code>vw_notification_channels</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_notification_channels</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_test_labs.vw_notification_channels" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.webHookUrl') as "web_hook_url",
JSON_EXTRACT(properties, '$.emailRecipient') as "email_recipient",
JSON_EXTRACT(properties, '$.notificationLocale') as "notification_locale",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.events') as "events",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
name
FROM azure.dev_test_labs.notification_channels
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.webHookUrl') as "web_hook_url",
json_extract_path_text(properties, '$.emailRecipient') as "email_recipient",
json_extract_path_text(properties, '$.notificationLocale') as "notification_locale",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.events') as "events",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
name
FROM azure.dev_test_labs.notification_channels
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me';
```

</TabItem>
</Tabs>
