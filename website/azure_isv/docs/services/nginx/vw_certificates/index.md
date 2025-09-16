--- 
title: vw_certificates
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_certificates
  - nginx
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_certificates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_certificates</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.nginx.vw_certificates" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.keyVirtualPath') as "key_virtual_path",
JSON_EXTRACT(properties, '$.certificateVirtualPath') as "certificate_virtual_path",
JSON_EXTRACT(properties, '$.keyVaultSecretId') as "key_vault_secret_id",
JSON_EXTRACT(properties, '$.sha1Thumbprint') as "sha1_thumbprint",
JSON_EXTRACT(properties, '$.keyVaultSecretVersion') as "key_vault_secret_version",
JSON_EXTRACT(properties, '$.keyVaultSecretCreated') as "key_vault_secret_created",
JSON_EXTRACT(properties, '$.certificateError') as "certificate_error",
subscriptionId,
resourceGroupName,
deploymentName,
certificateName
FROM azure_isv.nginx.certificates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deploymentName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.keyVirtualPath') as "key_virtual_path",
json_extract_path_text(properties, '$.certificateVirtualPath') as "certificate_virtual_path",
json_extract_path_text(properties, '$.keyVaultSecretId') as "key_vault_secret_id",
json_extract_path_text(properties, '$.sha1Thumbprint') as "sha1_thumbprint",
json_extract_path_text(properties, '$.keyVaultSecretVersion') as "key_vault_secret_version",
json_extract_path_text(properties, '$.keyVaultSecretCreated') as "key_vault_secret_created",
json_extract_path_text(properties, '$.certificateError') as "certificate_error",
subscriptionId,
resourceGroupName,
deploymentName,
certificateName
FROM azure_isv.nginx.certificates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deploymentName = 'replace-me';
```

</TabItem>
</Tabs>
