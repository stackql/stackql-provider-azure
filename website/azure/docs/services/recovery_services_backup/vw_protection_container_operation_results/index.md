--- 
title: vw_protection_container_operation_results
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_protection_container_operation_results
  - recovery_services_backup
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

Creates, updates, deletes, gets or lists a <code>vw_protection_container_operation_results</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_protection_container_operation_results</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_backup.vw_protection_container_operation_results" /></td></tr>
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
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.backupManagementType') as "backup_management_type",
JSON_EXTRACT(properties, '$.registrationStatus') as "registration_status",
JSON_EXTRACT(properties, '$.healthStatus') as "health_status",
JSON_EXTRACT(properties, '$.containerType') as "container_type",
JSON_EXTRACT(properties, '$.protectableObjectType') as "protectable_object_type",
subscriptionId,
resourceGroupName,
vaultName,
fabricName,
containerName,
operationId
FROM azure.recovery_services_backup.protection_container_operation_results
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me' AND fabricName = 'replace-me' AND containerName = 'replace-me' AND operationId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.backupManagementType') as "backup_management_type",
json_extract_path_text(properties, '$.registrationStatus') as "registration_status",
json_extract_path_text(properties, '$.healthStatus') as "health_status",
json_extract_path_text(properties, '$.containerType') as "container_type",
json_extract_path_text(properties, '$.protectableObjectType') as "protectable_object_type",
subscriptionId,
resourceGroupName,
vaultName,
fabricName,
containerName,
operationId
FROM azure.recovery_services_backup.protection_container_operation_results
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me' AND fabricName = 'replace-me' AND containerName = 'replace-me' AND operationId = 'replace-me';
```

</TabItem>
</Tabs>
