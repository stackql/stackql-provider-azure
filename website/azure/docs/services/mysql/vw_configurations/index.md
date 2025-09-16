--- 
title: vw_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_configurations
  - mysql
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

Creates, updates, deletes, gets or lists a <code>vw_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mysql.vw_configurations" /></td></tr>
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
JSON_EXTRACT(properties, '$.value') as "value",
JSON_EXTRACT(properties, '$.currentValue') as "current_value",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.documentationLink') as "documentation_link",
JSON_EXTRACT(properties, '$.defaultValue') as "default_value",
JSON_EXTRACT(properties, '$.dataType') as "data_type",
JSON_EXTRACT(properties, '$.allowedValues') as "allowed_values",
JSON_EXTRACT(properties, '$.source') as "source",
JSON_EXTRACT(properties, '$.isReadOnly') as "is_read_only",
JSON_EXTRACT(properties, '$.isConfigPendingRestart') as "is_config_pending_restart",
JSON_EXTRACT(properties, '$.isDynamicConfig') as "is_dynamic_config",
subscriptionId,
resourceGroupName,
serverName,
configurationName
FROM azure.mysql.configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.value') as "value",
json_extract_path_text(properties, '$.currentValue') as "current_value",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.documentationLink') as "documentation_link",
json_extract_path_text(properties, '$.defaultValue') as "default_value",
json_extract_path_text(properties, '$.dataType') as "data_type",
json_extract_path_text(properties, '$.allowedValues') as "allowed_values",
json_extract_path_text(properties, '$.source') as "source",
json_extract_path_text(properties, '$.isReadOnly') as "is_read_only",
json_extract_path_text(properties, '$.isConfigPendingRestart') as "is_config_pending_restart",
json_extract_path_text(properties, '$.isDynamicConfig') as "is_dynamic_config",
subscriptionId,
resourceGroupName,
serverName,
configurationName
FROM azure.mysql.configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
</Tabs>
