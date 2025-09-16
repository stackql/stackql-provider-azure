--- 
title: vw_management_associations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_management_associations
  - operations_management
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

Creates, updates, deletes, gets or lists a <code>vw_management_associations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_management_associations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.operations_management.vw_management_associations" /></td></tr>
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
JSON_EXTRACT(properties, '$.applicationId') as "application_id",
subscriptionId,
resourceGroupName,
providerName,
resourceType,
resourceName,
managementAssociationName
FROM azure.operations_management.management_associations
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
json_extract_path_text(properties, '$.applicationId') as "application_id",
subscriptionId,
resourceGroupName,
providerName,
resourceType,
resourceName,
managementAssociationName
FROM azure.operations_management.management_associations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
