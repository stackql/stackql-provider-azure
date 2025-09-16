--- 
title: vw_dras
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_dras
  - data_replication
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

Creates, updates, deletes, gets or lists a <code>vw_dras</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_dras</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_replication.vw_dras" /></td></tr>
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
JSON_EXTRACT(properties, '$.correlationId') as "correlation_id",
JSON_EXTRACT(properties, '$.machineId') as "machine_id",
JSON_EXTRACT(properties, '$.machineName') as "machine_name",
JSON_EXTRACT(properties, '$.authenticationIdentity') as "authentication_identity",
JSON_EXTRACT(properties, '$.resourceAccessIdentity') as "resource_access_identity",
JSON_EXTRACT(properties, '$.isResponsive') as "is_responsive",
JSON_EXTRACT(properties, '$.lastHeartbeat') as "last_heartbeat",
JSON_EXTRACT(properties, '$.versionNumber') as "version_number",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.healthErrors') as "health_errors",
JSON_EXTRACT(properties, '$.customProperties') as "custom_properties",
subscriptionId,
resourceGroupName,
fabricName,
fabricAgentName
FROM azure.data_replication.dras
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND fabricName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.correlationId') as "correlation_id",
json_extract_path_text(properties, '$.machineId') as "machine_id",
json_extract_path_text(properties, '$.machineName') as "machine_name",
json_extract_path_text(properties, '$.authenticationIdentity') as "authentication_identity",
json_extract_path_text(properties, '$.resourceAccessIdentity') as "resource_access_identity",
json_extract_path_text(properties, '$.isResponsive') as "is_responsive",
json_extract_path_text(properties, '$.lastHeartbeat') as "last_heartbeat",
json_extract_path_text(properties, '$.versionNumber') as "version_number",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.healthErrors') as "health_errors",
json_extract_path_text(properties, '$.customProperties') as "custom_properties",
subscriptionId,
resourceGroupName,
fabricName,
fabricAgentName
FROM azure.data_replication.dras
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND fabricName = 'replace-me';
```

</TabItem>
</Tabs>
