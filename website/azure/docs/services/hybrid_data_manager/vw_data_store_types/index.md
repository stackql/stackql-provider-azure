--- 
title: vw_data_store_types
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_data_store_types
  - hybrid_data_manager
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

Creates, updates, deletes, gets or lists a <code>vw_data_store_types</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_data_store_types</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_data_manager.vw_data_store_types" /></td></tr>
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
JSON_EXTRACT(properties, '$.repositoryType') as "repository_type",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.supportedDataServicesAsSink') as "supported_data_services_as_sink",
JSON_EXTRACT(properties, '$.supportedDataServicesAsSource') as "supported_data_services_as_source",
subscriptionId,
resourceGroupName,
dataManagerName,
dataStoreTypeName
FROM azure.hybrid_data_manager.data_store_types
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dataManagerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.repositoryType') as "repository_type",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.supportedDataServicesAsSink') as "supported_data_services_as_sink",
json_extract_path_text(properties, '$.supportedDataServicesAsSource') as "supported_data_services_as_source",
subscriptionId,
resourceGroupName,
dataManagerName,
dataStoreTypeName
FROM azure.hybrid_data_manager.data_store_types
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dataManagerName = 'replace-me';
```

</TabItem>
</Tabs>
