--- 
title: vw_firmwares
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_firmwares
  - iot_firmware_defense
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

Creates, updates, deletes, gets or lists a <code>vw_firmwares</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_firmwares</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_firmware_defense.vw_firmwares" /></td></tr>
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
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.fileName') as "file_name",
JSON_EXTRACT(properties, '$.vendor') as "vendor",
JSON_EXTRACT(properties, '$.model') as "model",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.fileSize') as "file_size",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.statusMessages') as "status_messages",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
workspaceName,
firmwareId
FROM azure.iot_firmware_defense.firmwares
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.fileName') as "file_name",
json_extract_path_text(properties, '$.vendor') as "vendor",
json_extract_path_text(properties, '$.model') as "model",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.fileSize') as "file_size",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.statusMessages') as "status_messages",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
workspaceName,
firmwareId
FROM azure.iot_firmware_defense.firmwares
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
