--- 
title: vw_registry_model_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_registry_model_versions
  - ml_services
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

Creates, updates, deletes, gets or lists a <code>vw_registry_model_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_registry_model_versions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.vw_registry_model_versions" /></td></tr>
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
JSON_EXTRACT(properties, '$.isAnonymous') as "is_anonymous",
JSON_EXTRACT(properties, '$.isArchived') as "is_archived",
JSON_EXTRACT(properties, '$.flavors') as "flavors",
JSON_EXTRACT(properties, '$.jobName') as "job_name",
JSON_EXTRACT(properties, '$.modelType') as "model_type",
JSON_EXTRACT(properties, '$.modelUri') as "model_uri",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.stage') as "stage",
subscriptionId,
resourceGroupName,
registryName,
modelName,
version
FROM azure.ml_services.registry_model_versions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND registryName = 'replace-me' AND modelName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.isAnonymous') as "is_anonymous",
json_extract_path_text(properties, '$.isArchived') as "is_archived",
json_extract_path_text(properties, '$.flavors') as "flavors",
json_extract_path_text(properties, '$.jobName') as "job_name",
json_extract_path_text(properties, '$.modelType') as "model_type",
json_extract_path_text(properties, '$.modelUri') as "model_uri",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.stage') as "stage",
subscriptionId,
resourceGroupName,
registryName,
modelName,
version
FROM azure.ml_services.registry_model_versions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND registryName = 'replace-me' AND modelName = 'replace-me';
```

</TabItem>
</Tabs>
