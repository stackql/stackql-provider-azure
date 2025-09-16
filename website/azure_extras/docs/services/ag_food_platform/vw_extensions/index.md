--- 
title: vw_extensions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_extensions
  - ag_food_platform
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_extensions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_extensions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.ag_food_platform.vw_extensions" /></td></tr>
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
systemData as system_data,
eTag as e_tag,
JSON_EXTRACT(properties, '$.extensionId') as "extension_id",
JSON_EXTRACT(properties, '$.extensionCategory') as "extension_category",
JSON_EXTRACT(properties, '$.installedExtensionVersion') as "installed_extension_version",
JSON_EXTRACT(properties, '$.extensionAuthLink') as "extension_auth_link",
JSON_EXTRACT(properties, '$.extensionApiDocsLink') as "extension_api_docs_link",
JSON_EXTRACT(properties, '$.additionalApiProperties') as "additional_api_properties",
subscriptionId,
resourceGroupName,
dataManagerForAgricultureResourceName,
extensionId
FROM azure_extras.ag_food_platform.extensions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dataManagerForAgricultureResourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
eTag as e_tag,
json_extract_path_text(properties, '$.extensionId') as "extension_id",
json_extract_path_text(properties, '$.extensionCategory') as "extension_category",
json_extract_path_text(properties, '$.installedExtensionVersion') as "installed_extension_version",
json_extract_path_text(properties, '$.extensionAuthLink') as "extension_auth_link",
json_extract_path_text(properties, '$.extensionApiDocsLink') as "extension_api_docs_link",
json_extract_path_text(properties, '$.additionalApiProperties') as "additional_api_properties",
subscriptionId,
resourceGroupName,
dataManagerForAgricultureResourceName,
extensionId
FROM azure_extras.ag_food_platform.extensions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dataManagerForAgricultureResourceName = 'replace-me';
```

</TabItem>
</Tabs>
