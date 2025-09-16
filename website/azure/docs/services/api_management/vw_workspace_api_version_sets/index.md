--- 
title: vw_workspace_api_version_sets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workspace_api_version_sets
  - api_management
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

Creates, updates, deletes, gets or lists a <code>vw_workspace_api_version_sets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workspace_api_version_sets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_workspace_api_version_sets" /></td></tr>
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
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.versioningScheme') as "versioning_scheme",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.versionQueryName') as "version_query_name",
JSON_EXTRACT(properties, '$.versionHeaderName') as "version_header_name",
subscriptionId,
resourceGroupName,
serviceName,
workspaceId,
versionSetId
FROM azure.api_management.workspace_api_version_sets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND workspaceId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.versioningScheme') as "versioning_scheme",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.versionQueryName') as "version_query_name",
json_extract_path_text(properties, '$.versionHeaderName') as "version_header_name",
subscriptionId,
resourceGroupName,
serviceName,
workspaceId,
versionSetId
FROM azure.api_management.workspace_api_version_sets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me' AND workspaceId = 'replace-me';
```

</TabItem>
</Tabs>
