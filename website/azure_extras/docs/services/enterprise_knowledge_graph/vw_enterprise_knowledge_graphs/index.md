--- 
title: vw_enterprise_knowledge_graphs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_enterprise_knowledge_graphs
  - enterprise_knowledge_graph
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_enterprise_knowledge_graphs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_enterprise_knowledge_graphs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.enterprise_knowledge_graph.vw_enterprise_knowledge_graphs" /></td></tr>
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
location as location,
type as type,
tags as tags,
sku as sku,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
resourceName
FROM azure_extras.enterprise_knowledge_graph.enterprise_knowledge_graphs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
sku as sku,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
resourceName
FROM azure_extras.enterprise_knowledge_graph.enterprise_knowledge_graphs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
