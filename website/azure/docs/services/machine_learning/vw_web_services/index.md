--- 
title: vw_web_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_web_services
  - machine_learning
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

Creates, updates, deletes, gets or lists a <code>vw_web_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_web_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.machine_learning.vw_web_services" /></td></tr>
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
JSON_EXTRACT(properties, '$.title') as "title",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.createdOn') as "created_on",
JSON_EXTRACT(properties, '$.modifiedOn') as "modified_on",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.keys') as "keys",
JSON_EXTRACT(properties, '$.readOnly') as "read_only",
JSON_EXTRACT(properties, '$.swaggerLocation') as "swagger_location",
JSON_EXTRACT(properties, '$.exposeSampleData') as "expose_sample_data",
JSON_EXTRACT(properties, '$.realtimeConfiguration') as "realtime_configuration",
JSON_EXTRACT(properties, '$.diagnostics') as "diagnostics",
JSON_EXTRACT(properties, '$.storageAccount') as "storage_account",
JSON_EXTRACT(properties, '$.machineLearningWorkspace') as "machine_learning_workspace",
JSON_EXTRACT(properties, '$.commitmentPlan') as "commitment_plan",
JSON_EXTRACT(properties, '$.input') as "input",
JSON_EXTRACT(properties, '$.output') as "output",
JSON_EXTRACT(properties, '$.exampleRequest') as "example_request",
JSON_EXTRACT(properties, '$.assets') as "assets",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
JSON_EXTRACT(properties, '$.packageType') as "package_type",
JSON_EXTRACT(properties, '$.payloadsInBlobStorage') as "payloads_in_blob_storage",
JSON_EXTRACT(properties, '$.payloadsLocation') as "payloads_location",
subscriptionId,
resourceGroupName,
webServiceName
FROM azure.machine_learning.web_services
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
json_extract_path_text(properties, '$.title') as "title",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.createdOn') as "created_on",
json_extract_path_text(properties, '$.modifiedOn') as "modified_on",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.keys') as "keys",
json_extract_path_text(properties, '$.readOnly') as "read_only",
json_extract_path_text(properties, '$.swaggerLocation') as "swagger_location",
json_extract_path_text(properties, '$.exposeSampleData') as "expose_sample_data",
json_extract_path_text(properties, '$.realtimeConfiguration') as "realtime_configuration",
json_extract_path_text(properties, '$.diagnostics') as "diagnostics",
json_extract_path_text(properties, '$.storageAccount') as "storage_account",
json_extract_path_text(properties, '$.machineLearningWorkspace') as "machine_learning_workspace",
json_extract_path_text(properties, '$.commitmentPlan') as "commitment_plan",
json_extract_path_text(properties, '$.input') as "input",
json_extract_path_text(properties, '$.output') as "output",
json_extract_path_text(properties, '$.exampleRequest') as "example_request",
json_extract_path_text(properties, '$.assets') as "assets",
json_extract_path_text(properties, '$.parameters') as "parameters",
json_extract_path_text(properties, '$.packageType') as "package_type",
json_extract_path_text(properties, '$.payloadsInBlobStorage') as "payloads_in_blob_storage",
json_extract_path_text(properties, '$.payloadsLocation') as "payloads_location",
subscriptionId,
resourceGroupName,
webServiceName
FROM azure.machine_learning.web_services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
