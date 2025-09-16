--- 
title: vw_data_manager_for_agriculture_extensions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_data_manager_for_agriculture_extensions
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

Creates, updates, deletes, gets or lists a <code>vw_data_manager_for_agriculture_extensions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_data_manager_for_agriculture_extensions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.ag_food_platform.vw_data_manager_for_agriculture_extensions" /></td></tr>
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
JSON_EXTRACT(properties, '$.targetResourceType') as "target_resource_type",
JSON_EXTRACT(properties, '$.farmBeatsExtensionId') as "farm_beats_extension_id",
JSON_EXTRACT(properties, '$.farmBeatsExtensionName') as "farm_beats_extension_name",
JSON_EXTRACT(properties, '$.farmBeatsExtensionVersion') as "farm_beats_extension_version",
JSON_EXTRACT(properties, '$.publisherId') as "publisher_id",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.extensionCategory') as "extension_category",
JSON_EXTRACT(properties, '$.extensionAuthLink') as "extension_auth_link",
JSON_EXTRACT(properties, '$.extensionApiDocsLink') as "extension_api_docs_link",
JSON_EXTRACT(properties, '$.detailedInformation') as "detailed_information",
dataManagerForAgricultureExtensionId
FROM azure_extras.ag_food_platform.data_manager_for_agriculture_extensions
WHERE dataManagerForAgricultureExtensionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.targetResourceType') as "target_resource_type",
json_extract_path_text(properties, '$.farmBeatsExtensionId') as "farm_beats_extension_id",
json_extract_path_text(properties, '$.farmBeatsExtensionName') as "farm_beats_extension_name",
json_extract_path_text(properties, '$.farmBeatsExtensionVersion') as "farm_beats_extension_version",
json_extract_path_text(properties, '$.publisherId') as "publisher_id",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.extensionCategory') as "extension_category",
json_extract_path_text(properties, '$.extensionAuthLink') as "extension_auth_link",
json_extract_path_text(properties, '$.extensionApiDocsLink') as "extension_api_docs_link",
json_extract_path_text(properties, '$.detailedInformation') as "detailed_information",
dataManagerForAgricultureExtensionId
FROM azure_extras.ag_food_platform.data_manager_for_agriculture_extensions
WHERE dataManagerForAgricultureExtensionId = 'replace-me';
```

</TabItem>
</Tabs>
