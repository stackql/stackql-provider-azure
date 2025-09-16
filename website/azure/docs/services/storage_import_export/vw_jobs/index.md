--- 
title: vw_jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_jobs
  - storage_import_export
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

Creates, updates, deletes, gets or lists a <code>vw_jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_jobs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_import_export.vw_jobs" /></td></tr>
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
systemData as system_data,
type as type,
tags as tags,
identity as identity,
JSON_EXTRACT(properties, '$.storageAccountId') as "storage_account_id",
JSON_EXTRACT(properties, '$.jobType') as "job_type",
JSON_EXTRACT(properties, '$.returnAddress') as "return_address",
JSON_EXTRACT(properties, '$.returnShipping') as "return_shipping",
JSON_EXTRACT(properties, '$.shippingInformation') as "shipping_information",
JSON_EXTRACT(properties, '$.deliveryPackage') as "delivery_package",
JSON_EXTRACT(properties, '$.returnPackage') as "return_package",
JSON_EXTRACT(properties, '$.diagnosticsPath') as "diagnostics_path",
JSON_EXTRACT(properties, '$.logLevel') as "log_level",
JSON_EXTRACT(properties, '$.backupDriveManifest') as "backup_drive_manifest",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.cancelRequested') as "cancel_requested",
JSON_EXTRACT(properties, '$.percentComplete') as "percent_complete",
JSON_EXTRACT(properties, '$.incompleteBlobListUri') as "incomplete_blob_list_uri",
JSON_EXTRACT(properties, '$.driveList') as "drive_list",
JSON_EXTRACT(properties, '$.export') as "export",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.encryptionKey') as "encryption_key",
subscriptionId,
resourceGroupName,
jobName
FROM azure.storage_import_export.jobs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
systemData as system_data,
type as type,
tags as tags,
identity as identity,
json_extract_path_text(properties, '$.storageAccountId') as "storage_account_id",
json_extract_path_text(properties, '$.jobType') as "job_type",
json_extract_path_text(properties, '$.returnAddress') as "return_address",
json_extract_path_text(properties, '$.returnShipping') as "return_shipping",
json_extract_path_text(properties, '$.shippingInformation') as "shipping_information",
json_extract_path_text(properties, '$.deliveryPackage') as "delivery_package",
json_extract_path_text(properties, '$.returnPackage') as "return_package",
json_extract_path_text(properties, '$.diagnosticsPath') as "diagnostics_path",
json_extract_path_text(properties, '$.logLevel') as "log_level",
json_extract_path_text(properties, '$.backupDriveManifest') as "backup_drive_manifest",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.cancelRequested') as "cancel_requested",
json_extract_path_text(properties, '$.percentComplete') as "percent_complete",
json_extract_path_text(properties, '$.incompleteBlobListUri') as "incomplete_blob_list_uri",
json_extract_path_text(properties, '$.driveList') as "drive_list",
json_extract_path_text(properties, '$.export') as "export",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.encryptionKey') as "encryption_key",
subscriptionId,
resourceGroupName,
jobName
FROM azure.storage_import_export.jobs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
