--- 
title: vw_local_users
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_local_users
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

Creates, updates, deletes, gets or lists a <code>vw_local_users</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_local_users</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage.vw_local_users" /></td></tr>
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
systemData as system_data,
type as type,
JSON_EXTRACT(properties, '$.permissionScopes') as "permission_scopes",
JSON_EXTRACT(properties, '$.homeDirectory') as "home_directory",
JSON_EXTRACT(properties, '$.sshAuthorizedKeys') as "ssh_authorized_keys",
JSON_EXTRACT(properties, '$.sid') as "sid",
JSON_EXTRACT(properties, '$.hasSharedKey') as "has_shared_key",
JSON_EXTRACT(properties, '$.hasSshKey') as "has_ssh_key",
JSON_EXTRACT(properties, '$.hasSshPassword') as "has_ssh_password",
JSON_EXTRACT(properties, '$.userId') as "user_id",
JSON_EXTRACT(properties, '$.groupId') as "group_id",
JSON_EXTRACT(properties, '$.allowAclAuthorization') as "allow_acl_authorization",
JSON_EXTRACT(properties, '$.extendedGroups') as "extended_groups",
JSON_EXTRACT(properties, '$.isNFSv3Enabled') as "is_nf_sv3_enabled",
subscriptionId,
resourceGroupName,
accountName,
username
FROM azure.storage.local_users
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
systemData as system_data,
type as type,
json_extract_path_text(properties, '$.permissionScopes') as "permission_scopes",
json_extract_path_text(properties, '$.homeDirectory') as "home_directory",
json_extract_path_text(properties, '$.sshAuthorizedKeys') as "ssh_authorized_keys",
json_extract_path_text(properties, '$.sid') as "sid",
json_extract_path_text(properties, '$.hasSharedKey') as "has_shared_key",
json_extract_path_text(properties, '$.hasSshKey') as "has_ssh_key",
json_extract_path_text(properties, '$.hasSshPassword') as "has_ssh_password",
json_extract_path_text(properties, '$.userId') as "user_id",
json_extract_path_text(properties, '$.groupId') as "group_id",
json_extract_path_text(properties, '$.allowAclAuthorization') as "allow_acl_authorization",
json_extract_path_text(properties, '$.extendedGroups') as "extended_groups",
json_extract_path_text(properties, '$.isNFSv3Enabled') as "is_nf_sv3_enabled",
subscriptionId,
resourceGroupName,
accountName,
username
FROM azure.storage.local_users
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
