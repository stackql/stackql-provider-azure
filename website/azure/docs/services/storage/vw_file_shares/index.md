--- 
title: vw_file_shares
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_file_shares
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

Creates, updates, deletes, gets or lists a <code>vw_file_shares</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_file_shares</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage.vw_file_shares" /></td></tr>
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
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.shareQuota') as "share_quota",
JSON_EXTRACT(properties, '$.enabledProtocols') as "enabled_protocols",
JSON_EXTRACT(properties, '$.rootSquash') as "root_squash",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.deleted') as "deleted",
JSON_EXTRACT(properties, '$.deletedTime') as "deleted_time",
JSON_EXTRACT(properties, '$.remainingRetentionDays') as "remaining_retention_days",
JSON_EXTRACT(properties, '$.accessTier') as "access_tier",
JSON_EXTRACT(properties, '$.accessTierChangeTime') as "access_tier_change_time",
JSON_EXTRACT(properties, '$.accessTierStatus') as "access_tier_status",
JSON_EXTRACT(properties, '$.shareUsageBytes') as "share_usage_bytes",
JSON_EXTRACT(properties, '$.leaseStatus') as "lease_status",
JSON_EXTRACT(properties, '$.leaseState') as "lease_state",
JSON_EXTRACT(properties, '$.leaseDuration') as "lease_duration",
JSON_EXTRACT(properties, '$.signedIdentifiers') as "signed_identifiers",
JSON_EXTRACT(properties, '$.snapshotTime') as "snapshot_time",
subscriptionId,
resourceGroupName,
accountName,
shareName
FROM azure.storage.file_shares
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.shareQuota') as "share_quota",
json_extract_path_text(properties, '$.enabledProtocols') as "enabled_protocols",
json_extract_path_text(properties, '$.rootSquash') as "root_squash",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.deleted') as "deleted",
json_extract_path_text(properties, '$.deletedTime') as "deleted_time",
json_extract_path_text(properties, '$.remainingRetentionDays') as "remaining_retention_days",
json_extract_path_text(properties, '$.accessTier') as "access_tier",
json_extract_path_text(properties, '$.accessTierChangeTime') as "access_tier_change_time",
json_extract_path_text(properties, '$.accessTierStatus') as "access_tier_status",
json_extract_path_text(properties, '$.shareUsageBytes') as "share_usage_bytes",
json_extract_path_text(properties, '$.leaseStatus') as "lease_status",
json_extract_path_text(properties, '$.leaseState') as "lease_state",
json_extract_path_text(properties, '$.leaseDuration') as "lease_duration",
json_extract_path_text(properties, '$.signedIdentifiers') as "signed_identifiers",
json_extract_path_text(properties, '$.snapshotTime') as "snapshot_time",
subscriptionId,
resourceGroupName,
accountName,
shareName
FROM azure.storage.file_shares
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
