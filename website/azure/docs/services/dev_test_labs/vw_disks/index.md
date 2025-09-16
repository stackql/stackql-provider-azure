--- 
title: vw_disks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_disks
  - dev_test_labs
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

Creates, updates, deletes, gets or lists a <code>vw_disks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_disks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_test_labs.vw_disks" /></td></tr>
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
JSON_EXTRACT(properties, '$.diskType') as "disk_type",
JSON_EXTRACT(properties, '$.diskSizeGiB') as "disk_size_gib",
JSON_EXTRACT(properties, '$.leasedByLabVmId') as "leased_by_lab_vm_id",
JSON_EXTRACT(properties, '$.diskBlobName') as "disk_blob_name",
JSON_EXTRACT(properties, '$.diskUri') as "disk_uri",
JSON_EXTRACT(properties, '$.storageAccountId') as "storage_account_id",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.hostCaching') as "host_caching",
JSON_EXTRACT(properties, '$.managedDiskId') as "managed_disk_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
userName,
name
FROM azure.dev_test_labs.disks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me' AND userName = 'replace-me';
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
json_extract_path_text(properties, '$.diskType') as "disk_type",
json_extract_path_text(properties, '$.diskSizeGiB') as "disk_size_gib",
json_extract_path_text(properties, '$.leasedByLabVmId') as "leased_by_lab_vm_id",
json_extract_path_text(properties, '$.diskBlobName') as "disk_blob_name",
json_extract_path_text(properties, '$.diskUri') as "disk_uri",
json_extract_path_text(properties, '$.storageAccountId') as "storage_account_id",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.hostCaching') as "host_caching",
json_extract_path_text(properties, '$.managedDiskId') as "managed_disk_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
userName,
name
FROM azure.dev_test_labs.disks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me' AND userName = 'replace-me';
```

</TabItem>
</Tabs>
