--- 
title: vw_encryption_sets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_encryption_sets
  - dev_center
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

Creates, updates, deletes, gets or lists a <code>vw_encryption_sets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_encryption_sets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.vw_encryption_sets" /></td></tr>
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
identity as identity,
JSON_EXTRACT(properties, '$.devboxDisksEncryptionEnableStatus') as "devbox_disks_encryption_enable_status",
JSON_EXTRACT(properties, '$.keyEncryptionKeyUrl') as "key_encryption_key_url",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
devCenterName,
encryptionSetName
FROM azure.dev_center.encryption_sets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND devCenterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
json_extract_path_text(properties, '$.devboxDisksEncryptionEnableStatus') as "devbox_disks_encryption_enable_status",
json_extract_path_text(properties, '$.keyEncryptionKeyUrl') as "key_encryption_key_url",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
devCenterName,
encryptionSetName
FROM azure.dev_center.encryption_sets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND devCenterName = 'replace-me';
```

</TabItem>
</Tabs>
