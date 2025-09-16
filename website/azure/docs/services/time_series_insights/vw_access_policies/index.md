--- 
title: vw_access_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_access_policies
  - time_series_insights
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

Creates, updates, deletes, gets or lists a <code>vw_access_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_access_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.time_series_insights.vw_access_policies" /></td></tr>
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
JSON_EXTRACT(properties, '$.principalObjectId') as "principal_object_id",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.roles') as "roles",
subscriptionId,
resourceGroupName,
environmentName,
accessPolicyName
FROM azure.time_series_insights.access_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND environmentName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.principalObjectId') as "principal_object_id",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.roles') as "roles",
subscriptionId,
resourceGroupName,
environmentName,
accessPolicyName
FROM azure.time_series_insights.access_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND environmentName = 'replace-me';
```

</TabItem>
</Tabs>
