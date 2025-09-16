--- 
title: vw_monitored_subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_monitored_subscriptions
  - newrelic
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_monitored_subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_monitored_subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.newrelic.vw_monitored_subscriptions" /></td></tr>
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
JSON_EXTRACT(properties, '$.patchOperation') as "patch_operation",
JSON_EXTRACT(properties, '$.monitoredSubscriptionList') as "monitored_subscription_list",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
monitorName,
configurationName
FROM azure_isv.newrelic.monitored_subscriptions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND monitorName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.patchOperation') as "patch_operation",
json_extract_path_text(properties, '$.monitoredSubscriptionList') as "monitored_subscription_list",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
monitorName,
configurationName
FROM azure_isv.newrelic.monitored_subscriptions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND monitorName = 'replace-me';
```

</TabItem>
</Tabs>
