--- 
title: vw_notification_hubs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_notification_hubs
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

Creates, updates, deletes, gets or lists a <code>vw_notification_hubs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_notification_hubs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.notification_hubs.vw_notification_hubs" /></td></tr>
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
sku as sku,
JSON_EXTRACT(properties, '$.name') as "name",
JSON_EXTRACT(properties, '$.registrationTtl') as "registration_ttl",
JSON_EXTRACT(properties, '$.authorizationRules') as "authorization_rules",
JSON_EXTRACT(properties, '$.apnsCredential') as "apns_credential",
JSON_EXTRACT(properties, '$.wnsCredential') as "wns_credential",
JSON_EXTRACT(properties, '$.gcmCredential') as "gcm_credential",
JSON_EXTRACT(properties, '$.mpnsCredential') as "mpns_credential",
JSON_EXTRACT(properties, '$.admCredential') as "adm_credential",
JSON_EXTRACT(properties, '$.baiduCredential') as "baidu_credential",
JSON_EXTRACT(properties, '$.browserCredential') as "browser_credential",
JSON_EXTRACT(properties, '$.xiaomiCredential') as "xiaomi_credential",
JSON_EXTRACT(properties, '$.fcmV1Credential') as "fcm_v1_credential",
JSON_EXTRACT(properties, '$.dailyMaxActiveDevices') as "daily_max_active_devices",
subscriptionId,
resourceGroupName,
namespaceName,
notificationHubName
FROM azure.notification_hubs.notification_hubs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND namespaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
sku as sku,
json_extract_path_text(properties, '$.name') as "name",
json_extract_path_text(properties, '$.registrationTtl') as "registration_ttl",
json_extract_path_text(properties, '$.authorizationRules') as "authorization_rules",
json_extract_path_text(properties, '$.apnsCredential') as "apns_credential",
json_extract_path_text(properties, '$.wnsCredential') as "wns_credential",
json_extract_path_text(properties, '$.gcmCredential') as "gcm_credential",
json_extract_path_text(properties, '$.mpnsCredential') as "mpns_credential",
json_extract_path_text(properties, '$.admCredential') as "adm_credential",
json_extract_path_text(properties, '$.baiduCredential') as "baidu_credential",
json_extract_path_text(properties, '$.browserCredential') as "browser_credential",
json_extract_path_text(properties, '$.xiaomiCredential') as "xiaomi_credential",
json_extract_path_text(properties, '$.fcmV1Credential') as "fcm_v1_credential",
json_extract_path_text(properties, '$.dailyMaxActiveDevices') as "daily_max_active_devices",
subscriptionId,
resourceGroupName,
namespaceName,
notificationHubName
FROM azure.notification_hubs.notification_hubs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND namespaceName = 'replace-me';
```

</TabItem>
</Tabs>
