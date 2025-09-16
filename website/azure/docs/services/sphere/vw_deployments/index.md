--- 
title: vw_deployments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_deployments
  - sphere
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

Creates, updates, deletes, gets or lists a <code>vw_deployments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_deployments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sphere.vw_deployments" /></td></tr>
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
JSON_EXTRACT(properties, '$.deploymentId') as "deployment_id",
JSON_EXTRACT(properties, '$.deployedImages') as "deployed_images",
JSON_EXTRACT(properties, '$.deploymentDateUtc') as "deployment_date_utc",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
catalogName,
productName,
deviceGroupName,
deploymentName
FROM azure.sphere.deployments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND catalogName = 'replace-me' AND productName = 'replace-me' AND deviceGroupName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.deploymentId') as "deployment_id",
json_extract_path_text(properties, '$.deployedImages') as "deployed_images",
json_extract_path_text(properties, '$.deploymentDateUtc') as "deployment_date_utc",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
catalogName,
productName,
deviceGroupName,
deploymentName
FROM azure.sphere.deployments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND catalogName = 'replace-me' AND productName = 'replace-me' AND deviceGroupName = 'replace-me';
```

</TabItem>
</Tabs>
