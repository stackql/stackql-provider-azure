--- 
title: vw_job_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_job_definitions
  - hybrid_data_manager
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

Creates, updates, deletes, gets or lists a <code>vw_job_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_job_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_data_manager.vw_job_definitions" /></td></tr>
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
JSON_EXTRACT(properties, '$.dataSourceId') as "data_source_id",
JSON_EXTRACT(properties, '$.dataSinkId') as "data_sink_id",
JSON_EXTRACT(properties, '$.schedules') as "schedules",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.runLocation') as "run_location",
JSON_EXTRACT(properties, '$.userConfirmation') as "user_confirmation",
JSON_EXTRACT(properties, '$.dataServiceInput') as "data_service_input",
JSON_EXTRACT(properties, '$.customerSecrets') as "customer_secrets",
subscriptionId,
resourceGroupName,
dataManagerName,
dataServiceName,
jobDefinitionName
FROM azure.hybrid_data_manager.job_definitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dataManagerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.dataSourceId') as "data_source_id",
json_extract_path_text(properties, '$.dataSinkId') as "data_sink_id",
json_extract_path_text(properties, '$.schedules') as "schedules",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.runLocation') as "run_location",
json_extract_path_text(properties, '$.userConfirmation') as "user_confirmation",
json_extract_path_text(properties, '$.dataServiceInput') as "data_service_input",
json_extract_path_text(properties, '$.customerSecrets') as "customer_secrets",
subscriptionId,
resourceGroupName,
dataManagerName,
dataServiceName,
jobDefinitionName
FROM azure.hybrid_data_manager.job_definitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dataManagerName = 'replace-me';
```

</TabItem>
</Tabs>
