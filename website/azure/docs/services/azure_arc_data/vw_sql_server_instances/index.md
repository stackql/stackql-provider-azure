--- 
title: vw_sql_server_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sql_server_instances
  - azure_arc_data
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

Creates, updates, deletes, gets or lists a <code>vw_sql_server_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sql_server_instances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.azure_arc_data.vw_sql_server_instances" /></td></tr>
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
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.edition') as "edition",
JSON_EXTRACT(properties, '$.containerResourceId') as "container_resource_id",
JSON_EXTRACT(properties, '$.createTime') as "create_time",
JSON_EXTRACT(properties, '$.vCore') as "v_core",
JSON_EXTRACT(properties, '$.cores') as "cores",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.patchLevel') as "patch_level",
JSON_EXTRACT(properties, '$.collation') as "collation",
JSON_EXTRACT(properties, '$.currentVersion') as "current_version",
JSON_EXTRACT(properties, '$.instanceName') as "instance_name",
JSON_EXTRACT(properties, '$.tcpDynamicPorts') as "tcp_dynamic_ports",
JSON_EXTRACT(properties, '$.tcpStaticPorts') as "tcp_static_ports",
JSON_EXTRACT(properties, '$.productId') as "product_id",
JSON_EXTRACT(properties, '$.licenseType') as "license_type",
JSON_EXTRACT(properties, '$.azureDefenderStatusLastUpdated') as "azure_defender_status_last_updated",
JSON_EXTRACT(properties, '$.azureDefenderStatus') as "azure_defender_status",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.lastInventoryUploadTime') as "last_inventory_upload_time",
JSON_EXTRACT(properties, '$.lastUsageUploadTime') as "last_usage_upload_time",
JSON_EXTRACT(properties, '$.hostType') as "host_type",
JSON_EXTRACT(properties, '$.alwaysOnRole') as "always_on_role",
JSON_EXTRACT(properties, '$.failoverCluster') as "failover_cluster",
JSON_EXTRACT(properties, '$.backupPolicy') as "backup_policy",
JSON_EXTRACT(properties, '$.upgradeLockedUntil') as "upgrade_locked_until",
JSON_EXTRACT(properties, '$.monitoring') as "monitoring",
subscriptionId,
resourceGroupName,
sqlServerInstanceName
FROM azure.azure_arc_data.sql_server_instances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.edition') as "edition",
json_extract_path_text(properties, '$.containerResourceId') as "container_resource_id",
json_extract_path_text(properties, '$.createTime') as "create_time",
json_extract_path_text(properties, '$.vCore') as "v_core",
json_extract_path_text(properties, '$.cores') as "cores",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.patchLevel') as "patch_level",
json_extract_path_text(properties, '$.collation') as "collation",
json_extract_path_text(properties, '$.currentVersion') as "current_version",
json_extract_path_text(properties, '$.instanceName') as "instance_name",
json_extract_path_text(properties, '$.tcpDynamicPorts') as "tcp_dynamic_ports",
json_extract_path_text(properties, '$.tcpStaticPorts') as "tcp_static_ports",
json_extract_path_text(properties, '$.productId') as "product_id",
json_extract_path_text(properties, '$.licenseType') as "license_type",
json_extract_path_text(properties, '$.azureDefenderStatusLastUpdated') as "azure_defender_status_last_updated",
json_extract_path_text(properties, '$.azureDefenderStatus') as "azure_defender_status",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.lastInventoryUploadTime') as "last_inventory_upload_time",
json_extract_path_text(properties, '$.lastUsageUploadTime') as "last_usage_upload_time",
json_extract_path_text(properties, '$.hostType') as "host_type",
json_extract_path_text(properties, '$.alwaysOnRole') as "always_on_role",
json_extract_path_text(properties, '$.failoverCluster') as "failover_cluster",
json_extract_path_text(properties, '$.backupPolicy') as "backup_policy",
json_extract_path_text(properties, '$.upgradeLockedUntil') as "upgrade_locked_until",
json_extract_path_text(properties, '$.monitoring') as "monitoring",
subscriptionId,
resourceGroupName,
sqlServerInstanceName
FROM azure.azure_arc_data.sql_server_instances
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
