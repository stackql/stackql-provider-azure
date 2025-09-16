--- 
title: vw_blob_containers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_blob_containers
  - storage
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

Creates, updates, deletes, gets or lists a <code>vw_blob_containers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_blob_containers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage.vw_blob_containers" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.deleted') as "deleted",
JSON_EXTRACT(properties, '$.deletedTime') as "deleted_time",
JSON_EXTRACT(properties, '$.remainingRetentionDays') as "remaining_retention_days",
JSON_EXTRACT(properties, '$.defaultEncryptionScope') as "default_encryption_scope",
JSON_EXTRACT(properties, '$.denyEncryptionScopeOverride') as "deny_encryption_scope_override",
JSON_EXTRACT(properties, '$.publicAccess') as "public_access",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.leaseStatus') as "lease_status",
JSON_EXTRACT(properties, '$.leaseState') as "lease_state",
JSON_EXTRACT(properties, '$.leaseDuration') as "lease_duration",
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.immutabilityPolicy') as "immutability_policy",
JSON_EXTRACT(properties, '$.legalHold') as "legal_hold",
JSON_EXTRACT(properties, '$.hasLegalHold') as "has_legal_hold",
JSON_EXTRACT(properties, '$.hasImmutabilityPolicy') as "has_immutability_policy",
JSON_EXTRACT(properties, '$.immutableStorageWithVersioning') as "immutable_storage_with_versioning",
JSON_EXTRACT(properties, '$.enableNfsV3RootSquash') as "enable_nfs_v3_root_squash",
JSON_EXTRACT(properties, '$.enableNfsV3AllSquash') as "enable_nfs_v3_all_squash",
subscriptionId,
resourceGroupName,
accountName,
containerName
FROM azure.storage.blob_containers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.deleted') as "deleted",
json_extract_path_text(properties, '$.deletedTime') as "deleted_time",
json_extract_path_text(properties, '$.remainingRetentionDays') as "remaining_retention_days",
json_extract_path_text(properties, '$.defaultEncryptionScope') as "default_encryption_scope",
json_extract_path_text(properties, '$.denyEncryptionScopeOverride') as "deny_encryption_scope_override",
json_extract_path_text(properties, '$.publicAccess') as "public_access",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.leaseStatus') as "lease_status",
json_extract_path_text(properties, '$.leaseState') as "lease_state",
json_extract_path_text(properties, '$.leaseDuration') as "lease_duration",
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.immutabilityPolicy') as "immutability_policy",
json_extract_path_text(properties, '$.legalHold') as "legal_hold",
json_extract_path_text(properties, '$.hasLegalHold') as "has_legal_hold",
json_extract_path_text(properties, '$.hasImmutabilityPolicy') as "has_immutability_policy",
json_extract_path_text(properties, '$.immutableStorageWithVersioning') as "immutable_storage_with_versioning",
json_extract_path_text(properties, '$.enableNfsV3RootSquash') as "enable_nfs_v3_root_squash",
json_extract_path_text(properties, '$.enableNfsV3AllSquash') as "enable_nfs_v3_all_squash",
subscriptionId,
resourceGroupName,
accountName,
containerName
FROM azure.storage.blob_containers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
