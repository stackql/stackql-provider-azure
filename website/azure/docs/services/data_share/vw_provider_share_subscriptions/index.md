--- 
title: vw_provider_share_subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_provider_share_subscriptions
  - data_share
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

Creates, updates, deletes, gets or lists a <code>vw_provider_share_subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_provider_share_subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_share.vw_provider_share_subscriptions" /></td></tr>
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
systemData as system_data,
type as type,
JSON_EXTRACT(properties, '$.consumerEmail') as "consumer_email",
JSON_EXTRACT(properties, '$.consumerName') as "consumer_name",
JSON_EXTRACT(properties, '$.consumerTenantName') as "consumer_tenant_name",
JSON_EXTRACT(properties, '$.createdAt') as "created_at",
JSON_EXTRACT(properties, '$.expirationDate') as "expiration_date",
JSON_EXTRACT(properties, '$.providerEmail') as "provider_email",
JSON_EXTRACT(properties, '$.providerName') as "provider_name",
JSON_EXTRACT(properties, '$.sharedAt') as "shared_at",
JSON_EXTRACT(properties, '$.shareSubscriptionObjectId') as "share_subscription_object_id",
JSON_EXTRACT(properties, '$.shareSubscriptionStatus') as "share_subscription_status",
subscriptionId,
resourceGroupName,
accountName,
shareName,
providerShareSubscriptionId
FROM azure.data_share.provider_share_subscriptions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND shareName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
systemData as system_data,
type as type,
json_extract_path_text(properties, '$.consumerEmail') as "consumer_email",
json_extract_path_text(properties, '$.consumerName') as "consumer_name",
json_extract_path_text(properties, '$.consumerTenantName') as "consumer_tenant_name",
json_extract_path_text(properties, '$.createdAt') as "created_at",
json_extract_path_text(properties, '$.expirationDate') as "expiration_date",
json_extract_path_text(properties, '$.providerEmail') as "provider_email",
json_extract_path_text(properties, '$.providerName') as "provider_name",
json_extract_path_text(properties, '$.sharedAt') as "shared_at",
json_extract_path_text(properties, '$.shareSubscriptionObjectId') as "share_subscription_object_id",
json_extract_path_text(properties, '$.shareSubscriptionStatus') as "share_subscription_status",
subscriptionId,
resourceGroupName,
accountName,
shareName,
providerShareSubscriptionId
FROM azure.data_share.provider_share_subscriptions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND shareName = 'replace-me';
```

</TabItem>
</Tabs>
