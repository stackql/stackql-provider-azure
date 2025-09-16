--- 
title: vw_metadata_schemas
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_metadata_schemas
  - api_center
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

Creates, updates, deletes, gets or lists a <code>vw_metadata_schemas</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_metadata_schemas</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_center.vw_metadata_schemas" /></td></tr>
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
JSON_EXTRACT(properties, '$.schema') as "schema",
JSON_EXTRACT(properties, '$.assignedTo') as "assigned_to",
subscriptionId,
resourceGroupName,
serviceName,
metadataSchemaName
FROM azure.api_center.metadata_schemas
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.schema') as "schema",
json_extract_path_text(properties, '$.assignedTo') as "assigned_to",
subscriptionId,
resourceGroupName,
serviceName,
metadataSchemaName
FROM azure.api_center.metadata_schemas
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
