--- 
title: vw_disk_encryption_sets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_disk_encryption_sets
  - compute
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

Creates, updates, deletes, gets or lists a <code>vw_disk_encryption_sets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_disk_encryption_sets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_disk_encryption_sets" /></td></tr>
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
identity as identity,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.encryptionType') as "encryption_type",
JSON_EXTRACT(properties, '$.activeKey') as "active_key",
JSON_EXTRACT(properties, '$.previousKeys') as "previous_keys",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.rotationToLatestKeyVersionEnabled') as "rotation_to_latest_key_version_enabled",
JSON_EXTRACT(properties, '$.lastKeyRotationTimestamp') as "last_key_rotation_timestamp",
JSON_EXTRACT(properties, '$.autoKeyRotationError') as "auto_key_rotation_error",
JSON_EXTRACT(properties, '$.federatedClientId') as "federated_client_id",
subscriptionId,
resourceGroupName,
diskEncryptionSetName
FROM azure.compute.disk_encryption_sets
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
identity as identity,
type as type,
tags as tags,
json_extract_path_text(properties, '$.encryptionType') as "encryption_type",
json_extract_path_text(properties, '$.activeKey') as "active_key",
json_extract_path_text(properties, '$.previousKeys') as "previous_keys",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.rotationToLatestKeyVersionEnabled') as "rotation_to_latest_key_version_enabled",
json_extract_path_text(properties, '$.lastKeyRotationTimestamp') as "last_key_rotation_timestamp",
json_extract_path_text(properties, '$.autoKeyRotationError') as "auto_key_rotation_error",
json_extract_path_text(properties, '$.federatedClientId') as "federated_client_id",
subscriptionId,
resourceGroupName,
diskEncryptionSetName
FROM azure.compute.disk_encryption_sets
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
