--- 
title: vw_product_packages
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_product_packages
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

Creates, updates, deletes, gets or lists a <code>vw_product_packages</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_product_packages</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.deployment_admin.vw_product_packages" /></td></tr>
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
JSON_EXTRACT(properties, '$.fileContainerId') as "file_container_id",
JSON_EXTRACT(properties, '$.isDeployable') as "is_deployable",
JSON_EXTRACT(properties, '$.isUpdatable') as "is_updatable",
JSON_EXTRACT(properties, '$.productDeploymentId') as "product_deployment_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
packageId
FROM azure_stack.deployment_admin.product_packages
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
json_extract_path_text(properties, '$.fileContainerId') as "file_container_id",
json_extract_path_text(properties, '$.isDeployable') as "is_deployable",
json_extract_path_text(properties, '$.isUpdatable') as "is_updatable",
json_extract_path_text(properties, '$.productDeploymentId') as "product_deployment_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
packageId
FROM azure_stack.deployment_admin.product_packages
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
