--- 
title: vw_encryption_scopes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_encryption_scopes
  - cognitive_services
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cognitive_services.vw_encryption_scopes" /></td></tr>
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
systemData as system_data,
etag as etag,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.keyVaultProperties') as "key_vault_properties",
JSON_EXTRACT(properties, '$.keySource') as "key_source",
subscriptionId,
resourceGroupName,
accountName,
encryptionScopeName
FROM azure.cognitive_services.encryption_scopes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
etag as etag,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.keyVaultProperties') as "key_vault_properties",
json_extract_path_text(properties, '$.keySource') as "key_source",
subscriptionId,
resourceGroupName,
accountName,
encryptionScopeName
FROM azure.cognitive_services.encryption_scopes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
