--- 
title: vw_recommendation_metadata
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_recommendation_metadata
  - advisor
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

Creates, updates, deletes, gets or lists a <code>vw_recommendation_metadata</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_recommendation_metadata</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.advisor.vw_recommendation_metadata" /></td></tr>
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
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.dependsOn') as "depends_on",
JSON_EXTRACT(properties, '$.applicableScenarios') as "applicable_scenarios",
JSON_EXTRACT(properties, '$.supportedValues') as "supported_values",
name
FROM azure.advisor.recommendation_metadata
WHERE name = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.dependsOn') as "depends_on",
json_extract_path_text(properties, '$.applicableScenarios') as "applicable_scenarios",
json_extract_path_text(properties, '$.supportedValues') as "supported_values",
name
FROM azure.advisor.recommendation_metadata
WHERE name = 'replace-me';
```

</TabItem>
</Tabs>
