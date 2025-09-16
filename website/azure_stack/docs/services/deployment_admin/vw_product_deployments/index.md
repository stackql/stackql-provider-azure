--- 
title: vw_product_deployments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_product_deployments
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

Creates, updates, deletes, gets or lists a <code>vw_product_deployments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_product_deployments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.deployment_admin.vw_product_deployments" /></td></tr>
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
eTag as e_tag,
type as type,
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.subscriptionId') as "subscription_id",
JSON_EXTRACT(properties, '$.deployment') as "deployment",
JSON_EXTRACT(properties, '$.lastSuccessfulDeployment') as "last_successful_deployment",
JSON_EXTRACT(properties, '$.secretRotation') as "secret_rotation",
JSON_EXTRACT(properties, '$.internalState') as "internal_state",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.externalAccess') as "external_access",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.productId') as "product_id",
subscriptionId,
productId
FROM azure_stack.deployment_admin.product_deployments
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
eTag as e_tag,
type as type,
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.subscriptionId') as "subscription_id",
json_extract_path_text(properties, '$.deployment') as "deployment",
json_extract_path_text(properties, '$.lastSuccessfulDeployment') as "last_successful_deployment",
json_extract_path_text(properties, '$.secretRotation') as "secret_rotation",
json_extract_path_text(properties, '$.internalState') as "internal_state",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.externalAccess') as "external_access",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.productId') as "product_id",
subscriptionId,
productId
FROM azure_stack.deployment_admin.product_deployments
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
