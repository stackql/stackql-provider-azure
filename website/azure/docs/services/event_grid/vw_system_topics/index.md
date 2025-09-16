--- 
title: vw_system_topics
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_system_topics
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

Creates, updates, deletes, gets or lists a <code>vw_system_topics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_system_topics</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.event_grid.vw_system_topics" /></td></tr>
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
systemData as system_data,
identity as identity,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.source') as "source",
JSON_EXTRACT(properties, '$.topicType') as "topic_type",
JSON_EXTRACT(properties, '$.metricResourceId') as "metric_resource_id",
subscriptionId,
resourceGroupName,
systemTopicName
FROM azure.event_grid.system_topics
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
systemData as system_data,
identity as identity,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.source') as "source",
json_extract_path_text(properties, '$.topicType') as "topic_type",
json_extract_path_text(properties, '$.metricResourceId') as "metric_resource_id",
subscriptionId,
resourceGroupName,
systemTopicName
FROM azure.event_grid.system_topics
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
