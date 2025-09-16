--- 
title: vw_custom_certificates
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_custom_certificates
  - web_pubsub
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

Creates, updates, deletes, gets or lists a <code>vw_custom_certificates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_custom_certificates</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.web_pubsub.vw_custom_certificates" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.keyVaultBaseUri') as "key_vault_base_uri",
JSON_EXTRACT(properties, '$.keyVaultSecretName') as "key_vault_secret_name",
JSON_EXTRACT(properties, '$.keyVaultSecretVersion') as "key_vault_secret_version",
subscriptionId,
resourceGroupName,
resourceName,
certificateName
FROM azure.web_pubsub.custom_certificates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.keyVaultBaseUri') as "key_vault_base_uri",
json_extract_path_text(properties, '$.keyVaultSecretName') as "key_vault_secret_name",
json_extract_path_text(properties, '$.keyVaultSecretVersion') as "key_vault_secret_version",
subscriptionId,
resourceGroupName,
resourceName,
certificateName
FROM azure.web_pubsub.custom_certificates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
