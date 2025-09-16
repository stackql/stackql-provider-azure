--- 
title: vw_environment_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_environment_definitions
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

Creates, updates, deletes, gets or lists a <code>vw_environment_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_environment_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.vw_environment_definitions" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
JSON_EXTRACT(properties, '$.templatePath') as "template_path",
JSON_EXTRACT(properties, '$.validationStatus') as "validation_status",
subscriptionId,
resourceGroupName,
projectName,
catalogName,
environmentDefinitionName,
devCenterName
FROM azure.dev_center.environment_definitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND devCenterName = 'replace-me' AND catalogName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.parameters') as "parameters",
json_extract_path_text(properties, '$.templatePath') as "template_path",
json_extract_path_text(properties, '$.validationStatus') as "validation_status",
subscriptionId,
resourceGroupName,
projectName,
catalogName,
environmentDefinitionName,
devCenterName
FROM azure.dev_center.environment_definitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND devCenterName = 'replace-me' AND catalogName = 'replace-me';
```

</TabItem>
</Tabs>
