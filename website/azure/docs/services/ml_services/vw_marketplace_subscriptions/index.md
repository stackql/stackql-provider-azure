--- 
title: vw_marketplace_subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_marketplace_subscriptions
  - ml_services
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

Creates, updates, deletes, gets or lists a <code>vw_marketplace_subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_marketplace_subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.vw_marketplace_subscriptions" /></td></tr>
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
JSON_EXTRACT(properties, '$.marketplacePlan') as "marketplace_plan",
JSON_EXTRACT(properties, '$.marketplaceSubscriptionStatus') as "marketplace_subscription_status",
JSON_EXTRACT(properties, '$.modelId') as "model_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
workspaceName,
name
FROM azure.ml_services.marketplace_subscriptions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.marketplacePlan') as "marketplace_plan",
json_extract_path_text(properties, '$.marketplaceSubscriptionStatus') as "marketplace_subscription_status",
json_extract_path_text(properties, '$.modelId') as "model_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
workspaceName,
name
FROM azure.ml_services.marketplace_subscriptions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
