--- 
title: vw_namespace_topics
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_namespace_topics
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

Creates, updates, deletes, gets or lists a <code>vw_namespace_topics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_namespace_topics</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.event_grid.vw_namespace_topics" /></td></tr>
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
JSON_EXTRACT(properties, '$.publisherType') as "publisher_type",
JSON_EXTRACT(properties, '$.inputSchema') as "input_schema",
JSON_EXTRACT(properties, '$.eventRetentionInDays') as "event_retention_in_days",
subscriptionId,
resourceGroupName,
namespaceName,
topicName
FROM azure.event_grid.namespace_topics
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND namespaceName = 'replace-me';
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
json_extract_path_text(properties, '$.publisherType') as "publisher_type",
json_extract_path_text(properties, '$.inputSchema') as "input_schema",
json_extract_path_text(properties, '$.eventRetentionInDays') as "event_retention_in_days",
subscriptionId,
resourceGroupName,
namespaceName,
topicName
FROM azure.event_grid.namespace_topics
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND namespaceName = 'replace-me';
```

</TabItem>
</Tabs>
