--- 
title: vw_deployments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_deployments
  - nginx
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_deployments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_deployments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.nginx.vw_deployments" /></td></tr>
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
identity as identity,
tags as tags,
sku as sku,
systemData as system_data,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.nginxVersion') as "nginx_version",
JSON_EXTRACT(properties, '$.managedResourceGroup') as "managed_resource_group",
JSON_EXTRACT(properties, '$.networkProfile') as "network_profile",
JSON_EXTRACT(properties, '$.ipAddress') as "ip_address",
JSON_EXTRACT(properties, '$.enableDiagnosticsSupport') as "enable_diagnostics_support",
JSON_EXTRACT(properties, '$.logging') as "logging",
JSON_EXTRACT(properties, '$.scalingProperties') as "scaling_properties",
JSON_EXTRACT(properties, '$.autoUpgradeProfile') as "auto_upgrade_profile",
JSON_EXTRACT(properties, '$.userProfile') as "user_profile",
JSON_EXTRACT(properties, '$.nginxAppProtect') as "nginx_app_protect",
subscriptionId,
resourceGroupName,
deploymentName
FROM azure_isv.nginx.deployments
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
identity as identity,
tags as tags,
sku as sku,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.nginxVersion') as "nginx_version",
json_extract_path_text(properties, '$.managedResourceGroup') as "managed_resource_group",
json_extract_path_text(properties, '$.networkProfile') as "network_profile",
json_extract_path_text(properties, '$.ipAddress') as "ip_address",
json_extract_path_text(properties, '$.enableDiagnosticsSupport') as "enable_diagnostics_support",
json_extract_path_text(properties, '$.logging') as "logging",
json_extract_path_text(properties, '$.scalingProperties') as "scaling_properties",
json_extract_path_text(properties, '$.autoUpgradeProfile') as "auto_upgrade_profile",
json_extract_path_text(properties, '$.userProfile') as "user_profile",
json_extract_path_text(properties, '$.nginxAppProtect') as "nginx_app_protect",
subscriptionId,
resourceGroupName,
deploymentName
FROM azure_isv.nginx.deployments
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
