--- 
title: vw_product_secrets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_product_secrets
  - deployment_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_product_secrets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_product_secrets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.deployment_admin.vw_product_secrets" /></td></tr>
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
JSON_EXTRACT(properties, '$.secretState') as "secret_state",
JSON_EXTRACT(properties, '$.secretDescriptor') as "secret_descriptor",
JSON_EXTRACT(properties, '$.expiresAfter') as "expires_after",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.secretKind') as "secret_kind",
subscriptionId,
packageId,
secretName
FROM azure_stack.deployment_admin.product_secrets
WHERE subscriptionId = 'replace-me' AND packageId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
json_extract_path_text(properties, '$.secretState') as "secret_state",
json_extract_path_text(properties, '$.secretDescriptor') as "secret_descriptor",
json_extract_path_text(properties, '$.expiresAfter') as "expires_after",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.secretKind') as "secret_kind",
subscriptionId,
packageId,
secretName
FROM azure_stack.deployment_admin.product_secrets
WHERE subscriptionId = 'replace-me' AND packageId = 'replace-me';
```

</TabItem>
</Tabs>
