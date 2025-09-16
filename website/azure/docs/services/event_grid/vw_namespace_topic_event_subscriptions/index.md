--- 
title: vw_namespace_topic_event_subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_namespace_topic_event_subscriptions
  - event_grid
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

Creates, updates, deletes, gets or lists a <code>vw_namespace_topic_event_subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_namespace_topic_event_subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.event_grid.vw_namespace_topic_event_subscriptions" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.deliveryConfiguration') as "delivery_configuration",
JSON_EXTRACT(properties, '$.eventDeliverySchema') as "event_delivery_schema",
JSON_EXTRACT(properties, '$.filtersConfiguration') as "filters_configuration",
JSON_EXTRACT(properties, '$.expirationTimeUtc') as "expiration_time_utc",
subscriptionId,
resourceGroupName,
namespaceName,
topicName,
eventSubscriptionName
FROM azure.event_grid.namespace_topic_event_subscriptions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND namespaceName = 'replace-me' AND topicName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.deliveryConfiguration') as "delivery_configuration",
json_extract_path_text(properties, '$.eventDeliverySchema') as "event_delivery_schema",
json_extract_path_text(properties, '$.filtersConfiguration') as "filters_configuration",
json_extract_path_text(properties, '$.expirationTimeUtc') as "expiration_time_utc",
subscriptionId,
resourceGroupName,
namespaceName,
topicName,
eventSubscriptionName
FROM azure.event_grid.namespace_topic_event_subscriptions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND namespaceName = 'replace-me' AND topicName = 'replace-me';
```

</TabItem>
</Tabs>
