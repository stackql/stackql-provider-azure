--- 
title: vw_inventories
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_inventories
  - hybrid_connectivity
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

Creates, updates, deletes, gets or lists a <code>vw_inventories</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_inventories</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_connectivity.vw_inventories" /></td></tr>
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
JSON_EXTRACT(properties, '$.cloudNativeType') as "cloud_native_type",
JSON_EXTRACT(properties, '$.cloudNativeResourceId') as "cloud_native_resource_id",
JSON_EXTRACT(properties, '$.azureResourceId') as "azure_resource_id",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.statusDetails') as "status_details",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
resourceUri,
solutionConfiguration,
inventoryId
FROM azure.hybrid_connectivity.inventories
WHERE resourceUri = 'replace-me' AND solutionConfiguration = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.cloudNativeType') as "cloud_native_type",
json_extract_path_text(properties, '$.cloudNativeResourceId') as "cloud_native_resource_id",
json_extract_path_text(properties, '$.azureResourceId') as "azure_resource_id",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.statusDetails') as "status_details",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
resourceUri,
solutionConfiguration,
inventoryId
FROM azure.hybrid_connectivity.inventories
WHERE resourceUri = 'replace-me' AND solutionConfiguration = 'replace-me';
```

</TabItem>
</Tabs>
