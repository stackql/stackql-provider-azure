--- 
title: vw_job_collections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_job_collections
  - scheduler
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

Creates, updates, deletes, gets or lists a <code>vw_job_collections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_job_collections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.scheduler.vw_job_collections" /></td></tr>
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
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.quota') as "quota",
subscriptionId,
resourceGroupName,
jobCollectionName
FROM azure.scheduler.job_collections
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
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.quota') as "quota",
subscriptionId,
resourceGroupName,
jobCollectionName
FROM azure.scheduler.job_collections
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
