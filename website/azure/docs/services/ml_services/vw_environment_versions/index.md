--- 
title: vw_environment_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_environment_versions
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

Creates, updates, deletes, gets or lists a <code>vw_environment_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_environment_versions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.vw_environment_versions" /></td></tr>
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
JSON_EXTRACT(properties, '$.autoRebuild') as "auto_rebuild",
JSON_EXTRACT(properties, '$.build') as "build",
JSON_EXTRACT(properties, '$.condaFile') as "conda_file",
JSON_EXTRACT(properties, '$.environmentType') as "environment_type",
JSON_EXTRACT(properties, '$.image') as "image",
JSON_EXTRACT(properties, '$.inferenceConfig') as "inference_config",
JSON_EXTRACT(properties, '$.osType') as "os_type",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.stage') as "stage",
subscriptionId,
resourceGroupName,
workspaceName,
name,
version
FROM azure.ml_services.environment_versions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND name = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.isAnonymous') as "is_anonymous",
json_extract_path_text(properties, '$.isArchived') as "is_archived",
json_extract_path_text(properties, '$.autoRebuild') as "auto_rebuild",
json_extract_path_text(properties, '$.build') as "build",
json_extract_path_text(properties, '$.condaFile') as "conda_file",
json_extract_path_text(properties, '$.environmentType') as "environment_type",
json_extract_path_text(properties, '$.image') as "image",
json_extract_path_text(properties, '$.inferenceConfig') as "inference_config",
json_extract_path_text(properties, '$.osType') as "os_type",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.stage') as "stage",
subscriptionId,
resourceGroupName,
workspaceName,
name,
version
FROM azure.ml_services.environment_versions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND name = 'replace-me';
```

</TabItem>
</Tabs>
