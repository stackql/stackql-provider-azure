--- 
title: vw_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_pools
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

Creates, updates, deletes, gets or lists a <code>vw_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.vw_pools" /></td></tr>
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
location as location,
tags as tags,
JSON_EXTRACT(properties, '$.devBoxDefinitionType') as "dev_box_definition_type",
JSON_EXTRACT(properties, '$.devBoxDefinitionName') as "dev_box_definition_name",
JSON_EXTRACT(properties, '$.devBoxDefinition') as "dev_box_definition",
JSON_EXTRACT(properties, '$.networkConnectionName') as "network_connection_name",
JSON_EXTRACT(properties, '$.licenseType') as "license_type",
JSON_EXTRACT(properties, '$.localAdministrator') as "local_administrator",
JSON_EXTRACT(properties, '$.stopOnDisconnect') as "stop_on_disconnect",
JSON_EXTRACT(properties, '$.singleSignOnStatus') as "single_sign_on_status",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.virtualNetworkType') as "virtual_network_type",
JSON_EXTRACT(properties, '$.managedVirtualNetworkRegions') as "managed_virtual_network_regions",
JSON_EXTRACT(properties, '$.healthStatus') as "health_status",
JSON_EXTRACT(properties, '$.healthStatusDetails') as "health_status_details",
JSON_EXTRACT(properties, '$.devBoxCount') as "dev_box_count",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
projectName,
poolName
FROM azure.dev_center.pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND projectName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.devBoxDefinitionType') as "dev_box_definition_type",
json_extract_path_text(properties, '$.devBoxDefinitionName') as "dev_box_definition_name",
json_extract_path_text(properties, '$.devBoxDefinition') as "dev_box_definition",
json_extract_path_text(properties, '$.networkConnectionName') as "network_connection_name",
json_extract_path_text(properties, '$.licenseType') as "license_type",
json_extract_path_text(properties, '$.localAdministrator') as "local_administrator",
json_extract_path_text(properties, '$.stopOnDisconnect') as "stop_on_disconnect",
json_extract_path_text(properties, '$.singleSignOnStatus') as "single_sign_on_status",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.virtualNetworkType') as "virtual_network_type",
json_extract_path_text(properties, '$.managedVirtualNetworkRegions') as "managed_virtual_network_regions",
json_extract_path_text(properties, '$.healthStatus') as "health_status",
json_extract_path_text(properties, '$.healthStatusDetails') as "health_status_details",
json_extract_path_text(properties, '$.devBoxCount') as "dev_box_count",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
projectName,
poolName
FROM azure.dev_center.pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND projectName = 'replace-me';
```

</TabItem>
</Tabs>
