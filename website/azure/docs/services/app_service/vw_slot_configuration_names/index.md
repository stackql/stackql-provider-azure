--- 
title: vw_slot_configuration_names
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_slot_configuration_names
  - app_service
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

Creates, updates, deletes, gets or lists a <code>vw_slot_configuration_names</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_slot_configuration_names</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.vw_slot_configuration_names" /></td></tr>
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
id as id,
name as name,
kind as kind,
type as type,
JSON_EXTRACT(properties, '$.connectionStringNames') as "connection_string_names",
JSON_EXTRACT(properties, '$.appSettingNames') as "app_setting_names",
JSON_EXTRACT(properties, '$.azureStorageConfigNames') as "azure_storage_config_names",
subscriptionId,
resourceGroupName,
name
FROM azure.app_service.slot_configuration_names
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND name = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
kind as kind,
type as type,
json_extract_path_text(properties, '$.connectionStringNames') as "connection_string_names",
json_extract_path_text(properties, '$.appSettingNames') as "app_setting_names",
json_extract_path_text(properties, '$.azureStorageConfigNames') as "azure_storage_config_names",
subscriptionId,
resourceGroupName,
name
FROM azure.app_service.slot_configuration_names
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND name = 'replace-me';
```

</TabItem>
</Tabs>
