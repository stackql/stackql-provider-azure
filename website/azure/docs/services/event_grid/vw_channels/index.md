--- 
title: vw_channels
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_channels
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

Creates, updates, deletes, gets or lists a <code>vw_channels</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_channels</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.event_grid.vw_channels" /></td></tr>
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
JSON_EXTRACT(properties, '$.channelType') as "channel_type",
JSON_EXTRACT(properties, '$.partnerTopicInfo') as "partner_topic_info",
JSON_EXTRACT(properties, '$.partnerDestinationInfo') as "partner_destination_info",
JSON_EXTRACT(properties, '$.messageForActivation') as "message_for_activation",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.readinessState') as "readiness_state",
JSON_EXTRACT(properties, '$.expirationTimeIfNotActivatedUtc') as "expiration_time_if_not_activated_utc",
subscriptionId,
resourceGroupName,
partnerNamespaceName,
channelName
FROM azure.event_grid.channels
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND partnerNamespaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.channelType') as "channel_type",
json_extract_path_text(properties, '$.partnerTopicInfo') as "partner_topic_info",
json_extract_path_text(properties, '$.partnerDestinationInfo') as "partner_destination_info",
json_extract_path_text(properties, '$.messageForActivation') as "message_for_activation",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.readinessState') as "readiness_state",
json_extract_path_text(properties, '$.expirationTimeIfNotActivatedUtc') as "expiration_time_if_not_activated_utc",
subscriptionId,
resourceGroupName,
partnerNamespaceName,
channelName
FROM azure.event_grid.channels
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND partnerNamespaceName = 'replace-me';
```

</TabItem>
</Tabs>
