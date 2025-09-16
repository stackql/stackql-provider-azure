--- 
title: vw_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_rules
  - service_bus
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

Creates, updates, deletes, gets or lists a <code>vw_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_bus.vw_rules" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.action') as "action",
JSON_EXTRACT(properties, '$.filterType') as "filter_type",
JSON_EXTRACT(properties, '$.sqlFilter') as "sql_filter",
JSON_EXTRACT(properties, '$.correlationFilter') as "correlation_filter",
subscriptionId,
resourceGroupName,
namespaceName,
topicName,
subscriptionName,
ruleName
FROM azure.service_bus.rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND namespaceName = 'replace-me' AND topicName = 'replace-me' AND subscriptionName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.action') as "action",
json_extract_path_text(properties, '$.filterType') as "filter_type",
json_extract_path_text(properties, '$.sqlFilter') as "sql_filter",
json_extract_path_text(properties, '$.correlationFilter') as "correlation_filter",
subscriptionId,
resourceGroupName,
namespaceName,
topicName,
subscriptionName,
ruleName
FROM azure.service_bus.rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND namespaceName = 'replace-me' AND topicName = 'replace-me' AND subscriptionName = 'replace-me';
```

</TabItem>
</Tabs>
