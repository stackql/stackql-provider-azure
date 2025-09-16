--- 
title: vw_source_controls
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_source_controls
  - sentinel
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

Creates, updates, deletes, gets or lists a <code>vw_source_controls</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_source_controls</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sentinel.vw_source_controls" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.id') as "id",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.repoType') as "repo_type",
JSON_EXTRACT(properties, '$.contentTypes') as "content_types",
JSON_EXTRACT(properties, '$.repository') as "repository",
JSON_EXTRACT(properties, '$.servicePrincipal') as "service_principal",
JSON_EXTRACT(properties, '$.repositoryAccess') as "repository_access",
JSON_EXTRACT(properties, '$.repositoryResourceInfo') as "repository_resource_info",
JSON_EXTRACT(properties, '$.lastDeploymentInfo') as "last_deployment_info",
JSON_EXTRACT(properties, '$.pullRequest') as "pull_request",
subscriptionId,
resourceGroupName,
workspaceName,
sourceControlId
FROM azure.sentinel.source_controls
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
json_extract_path_text(properties, '$.id') as "id",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.repoType') as "repo_type",
json_extract_path_text(properties, '$.contentTypes') as "content_types",
json_extract_path_text(properties, '$.repository') as "repository",
json_extract_path_text(properties, '$.servicePrincipal') as "service_principal",
json_extract_path_text(properties, '$.repositoryAccess') as "repository_access",
json_extract_path_text(properties, '$.repositoryResourceInfo') as "repository_resource_info",
json_extract_path_text(properties, '$.lastDeploymentInfo') as "last_deployment_info",
json_extract_path_text(properties, '$.pullRequest') as "pull_request",
subscriptionId,
resourceGroupName,
workspaceName,
sourceControlId
FROM azure.sentinel.source_controls
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
