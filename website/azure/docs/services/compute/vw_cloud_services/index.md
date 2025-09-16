--- 
title: vw_cloud_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_cloud_services
  - compute
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

Creates, updates, deletes, gets or lists a <code>vw_cloud_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_cloud_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_cloud_services" /></td></tr>
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
location as location,
type as type,
tags as tags,
systemData as system_data,
zones as zones,
JSON_EXTRACT(properties, '$.packageUrl') as "package_url",
JSON_EXTRACT(properties, '$.configuration') as "configuration",
JSON_EXTRACT(properties, '$.configurationUrl') as "configuration_url",
JSON_EXTRACT(properties, '$.startCloudService') as "start_cloud_service",
JSON_EXTRACT(properties, '$.allowModelOverride') as "allow_model_override",
JSON_EXTRACT(properties, '$.upgradeMode') as "upgrade_mode",
JSON_EXTRACT(properties, '$.roleProfile') as "role_profile",
JSON_EXTRACT(properties, '$.osProfile') as "os_profile",
JSON_EXTRACT(properties, '$.networkProfile') as "network_profile",
JSON_EXTRACT(properties, '$.extensionProfile') as "extension_profile",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.uniqueId') as "unique_id",
subscriptionId,
resourceGroupName,
cloudServiceName
FROM azure.compute.cloud_services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
systemData as system_data,
zones as zones,
json_extract_path_text(properties, '$.packageUrl') as "package_url",
json_extract_path_text(properties, '$.configuration') as "configuration",
json_extract_path_text(properties, '$.configurationUrl') as "configuration_url",
json_extract_path_text(properties, '$.startCloudService') as "start_cloud_service",
json_extract_path_text(properties, '$.allowModelOverride') as "allow_model_override",
json_extract_path_text(properties, '$.upgradeMode') as "upgrade_mode",
json_extract_path_text(properties, '$.roleProfile') as "role_profile",
json_extract_path_text(properties, '$.osProfile') as "os_profile",
json_extract_path_text(properties, '$.networkProfile') as "network_profile",
json_extract_path_text(properties, '$.extensionProfile') as "extension_profile",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.uniqueId') as "unique_id",
subscriptionId,
resourceGroupName,
cloudServiceName
FROM azure.compute.cloud_services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
