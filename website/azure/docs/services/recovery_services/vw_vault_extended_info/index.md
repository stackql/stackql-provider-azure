--- 
title: vw_vault_extended_info
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_vault_extended_info
  - recovery_services
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

Creates, updates, deletes, gets or lists a <code>vw_vault_extended_info</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_vault_extended_info</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services.vw_vault_extended_info" /></td></tr>
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
JSON_EXTRACT(properties, '$.integrityKey') as "integrity_key",
JSON_EXTRACT(properties, '$.encryptionKey') as "encryption_key",
JSON_EXTRACT(properties, '$.encryptionKeyThumbprint') as "encryption_key_thumbprint",
JSON_EXTRACT(properties, '$.algorithm') as "algorithm",
subscriptionId,
resourceGroupName,
vaultName
FROM azure.recovery_services.vault_extended_info
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.integrityKey') as "integrity_key",
json_extract_path_text(properties, '$.encryptionKey') as "encryption_key",
json_extract_path_text(properties, '$.encryptionKeyThumbprint') as "encryption_key_thumbprint",
json_extract_path_text(properties, '$.algorithm') as "algorithm",
subscriptionId,
resourceGroupName,
vaultName
FROM azure.recovery_services.vault_extended_info
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
</Tabs>
