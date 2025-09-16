--- 
title: vw_region_healths
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_region_healths
  - infrastructure_insights_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_region_healths</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_region_healths</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.infrastructure_insights_admin.vw_region_healths" /></td></tr>
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
JSON_EXTRACT(properties, '$.alertSummary') as "alert_summary",
JSON_EXTRACT(properties, '$.usageMetrics') as "usage_metrics",
subscriptionId,
resourceGroupName,
location
FROM azure_stack.infrastructure_insights_admin.region_healths
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.alertSummary') as "alert_summary",
json_extract_path_text(properties, '$.usageMetrics') as "usage_metrics",
subscriptionId,
resourceGroupName,
location
FROM azure_stack.infrastructure_insights_admin.region_healths
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me';
```

</TabItem>
</Tabs>
