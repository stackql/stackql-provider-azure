--- 
title: vw_sandbox_custom_images
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sandbox_custom_images
  - data_explorer
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

Creates, updates, deletes, gets or lists a <code>vw_sandbox_custom_images</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sandbox_custom_images</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_explorer.vw_sandbox_custom_images" /></td></tr>
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
JSON_EXTRACT(properties, '$.language') as "language",
JSON_EXTRACT(properties, '$.languageVersion') as "language_version",
JSON_EXTRACT(properties, '$.requirementsFileContent') as "requirements_file_content",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
clusterName,
sandboxCustomImageName
FROM azure.data_explorer.sandbox_custom_images
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.language') as "language",
json_extract_path_text(properties, '$.languageVersion') as "language_version",
json_extract_path_text(properties, '$.requirementsFileContent') as "requirements_file_content",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
clusterName,
sandboxCustomImageName
FROM azure.data_explorer.sandbox_custom_images
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
</Tabs>
