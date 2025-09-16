--- 
title: vw_reference_data_sets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_reference_data_sets
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

Creates, updates, deletes, gets or lists a <code>vw_reference_data_sets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_reference_data_sets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.time_series_insights.vw_reference_data_sets" /></td></tr>
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
JSON_EXTRACT(properties, '$.keyProperties') as "key_properties",
JSON_EXTRACT(properties, '$.dataStringComparisonBehavior') as "data_string_comparison_behavior",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
subscriptionId,
resourceGroupName,
environmentName,
referenceDataSetName
FROM azure.time_series_insights.reference_data_sets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND environmentName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.keyProperties') as "key_properties",
json_extract_path_text(properties, '$.dataStringComparisonBehavior') as "data_string_comparison_behavior",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
subscriptionId,
resourceGroupName,
environmentName,
referenceDataSetName
FROM azure.time_series_insights.reference_data_sets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND environmentName = 'replace-me';
```

</TabItem>
</Tabs>
