--- 
title: vw_encryption_scopes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_encryption_scopes
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

Creates, updates, deletes, gets or lists a <code>vw_encryption_scopes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_encryption_scopes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage.vw_encryption_scopes" /></td></tr>
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
JSON_EXTRACT(properties, '$.source') as "source",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.keyVaultProperties') as "key_vault_properties",
JSON_EXTRACT(properties, '$.requireInfrastructureEncryption') as "require_infrastructure_encryption",
subscriptionId,
resourceGroupName,
accountName,
encryptionScopeName
FROM azure.storage.encryption_scopes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.source') as "source",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.keyVaultProperties') as "key_vault_properties",
json_extract_path_text(properties, '$.requireInfrastructureEncryption') as "require_infrastructure_encryption",
subscriptionId,
resourceGroupName,
accountName,
encryptionScopeName
FROM azure.storage.encryption_scopes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
