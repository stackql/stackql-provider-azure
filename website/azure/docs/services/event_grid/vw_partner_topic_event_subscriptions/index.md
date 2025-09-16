--- 
title: vw_partner_topic_event_subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_partner_topic_event_subscriptions
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

Creates, updates, deletes, gets or lists a <code>vw_partner_topic_event_subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_partner_topic_event_subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.event_grid.vw_partner_topic_event_subscriptions" /></td></tr>
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
JSON_EXTRACT(properties, '$.topic') as "topic",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.destination') as "destination",
JSON_EXTRACT(properties, '$.deliveryWithResourceIdentity') as "delivery_with_resource_identity",
JSON_EXTRACT(properties, '$.filter') as "filter",
JSON_EXTRACT(properties, '$.labels') as "labels",
JSON_EXTRACT(properties, '$.expirationTimeUtc') as "expiration_time_utc",
JSON_EXTRACT(properties, '$.eventDeliverySchema') as "event_delivery_schema",
JSON_EXTRACT(properties, '$.retryPolicy') as "retry_policy",
JSON_EXTRACT(properties, '$.deadLetterDestination') as "dead_letter_destination",
JSON_EXTRACT(properties, '$.deadLetterWithResourceIdentity') as "dead_letter_with_resource_identity",
subscriptionId,
resourceGroupName,
partnerTopicName,
eventSubscriptionName
FROM azure.event_grid.partner_topic_event_subscriptions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND partnerTopicName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.topic') as "topic",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.destination') as "destination",
json_extract_path_text(properties, '$.deliveryWithResourceIdentity') as "delivery_with_resource_identity",
json_extract_path_text(properties, '$.filter') as "filter",
json_extract_path_text(properties, '$.labels') as "labels",
json_extract_path_text(properties, '$.expirationTimeUtc') as "expiration_time_utc",
json_extract_path_text(properties, '$.eventDeliverySchema') as "event_delivery_schema",
json_extract_path_text(properties, '$.retryPolicy') as "retry_policy",
json_extract_path_text(properties, '$.deadLetterDestination') as "dead_letter_destination",
json_extract_path_text(properties, '$.deadLetterWithResourceIdentity') as "dead_letter_with_resource_identity",
subscriptionId,
resourceGroupName,
partnerTopicName,
eventSubscriptionName
FROM azure.event_grid.partner_topic_event_subscriptions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND partnerTopicName = 'replace-me';
```

</TabItem>
</Tabs>
