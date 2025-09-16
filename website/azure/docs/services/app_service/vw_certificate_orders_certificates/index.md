--- 
title: vw_certificate_orders_certificates
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_certificate_orders_certificates
  - app_service
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

Creates, updates, deletes, gets or lists a <code>vw_certificate_orders_certificates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_certificate_orders_certificates</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.vw_certificate_orders_certificates" /></td></tr>
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
JSON_EXTRACT(properties, '$.keyVaultId') as "key_vault_id",
JSON_EXTRACT(properties, '$.keyVaultSecretName') as "key_vault_secret_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
certificateOrderName,
name
FROM azure.app_service.certificate_orders_certificates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND certificateOrderName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.keyVaultId') as "key_vault_id",
json_extract_path_text(properties, '$.keyVaultSecretName') as "key_vault_secret_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
certificateOrderName,
name
FROM azure.app_service.certificate_orders_certificates
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND certificateOrderName = 'replace-me';
```

</TabItem>
</Tabs>
