--- 
title: vw_replicationv_center
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replicationv_center
  - recovery_services_site_recovery
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

Creates, updates, deletes, gets or lists a <code>vw_replicationv_center</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replicationv_center</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.vw_replicationv_center" /></td></tr>
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
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.internalId') as "internal_id",
JSON_EXTRACT(properties, '$.lastHeartbeat') as "last_heartbeat",
JSON_EXTRACT(properties, '$.discoveryStatus') as "discovery_status",
JSON_EXTRACT(properties, '$.processServerId') as "process_server_id",
JSON_EXTRACT(properties, '$.ipAddress') as "ip_address",
JSON_EXTRACT(properties, '$.infrastructureId') as "infrastructure_id",
JSON_EXTRACT(properties, '$.port') as "port",
JSON_EXTRACT(properties, '$.runAsAccountId') as "run_as_account_id",
JSON_EXTRACT(properties, '$.fabricArmResourceName') as "fabric_arm_resource_name",
JSON_EXTRACT(properties, '$.healthErrors') as "health_errors",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
vcenterName
FROM azure.recovery_services_site_recovery.replicationv_center
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.internalId') as "internal_id",
json_extract_path_text(properties, '$.lastHeartbeat') as "last_heartbeat",
json_extract_path_text(properties, '$.discoveryStatus') as "discovery_status",
json_extract_path_text(properties, '$.processServerId') as "process_server_id",
json_extract_path_text(properties, '$.ipAddress') as "ip_address",
json_extract_path_text(properties, '$.infrastructureId') as "infrastructure_id",
json_extract_path_text(properties, '$.port') as "port",
json_extract_path_text(properties, '$.runAsAccountId') as "run_as_account_id",
json_extract_path_text(properties, '$.fabricArmResourceName') as "fabric_arm_resource_name",
json_extract_path_text(properties, '$.healthErrors') as "health_errors",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
vcenterName
FROM azure.recovery_services_site_recovery.replicationv_center
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
