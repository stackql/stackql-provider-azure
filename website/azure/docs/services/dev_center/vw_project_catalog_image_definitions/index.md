--- 
title: vw_project_catalog_image_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_project_catalog_image_definitions
  - dev_center
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

Creates, updates, deletes, gets or lists a <code>vw_project_catalog_image_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_project_catalog_image_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.vw_project_catalog_image_definitions" /></td></tr>
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
JSON_EXTRACT(properties, '$.imageReference') as "image_reference",
JSON_EXTRACT(properties, '$.fileUrl') as "file_url",
JSON_EXTRACT(properties, '$.latestBuild') as "latest_build",
subscriptionId,
resourceGroupName,
projectName,
catalogName,
imageDefinitionName
FROM azure.dev_center.project_catalog_image_definitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND projectName = 'replace-me' AND catalogName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.imageReference') as "image_reference",
json_extract_path_text(properties, '$.fileUrl') as "file_url",
json_extract_path_text(properties, '$.latestBuild') as "latest_build",
subscriptionId,
resourceGroupName,
projectName,
catalogName,
imageDefinitionName
FROM azure.dev_center.project_catalog_image_definitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND projectName = 'replace-me' AND catalogName = 'replace-me';
```

</TabItem>
</Tabs>
