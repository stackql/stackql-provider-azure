--- 
title: vw_database_principal_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_database_principal_assignments
  - data_explorer
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

Creates, updates, deletes, gets or lists a <code>vw_database_principal_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_database_principal_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_explorer.vw_database_principal_assignments" /></td></tr>
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
JSON_EXTRACT(properties, '$.principalId') as "principal_id",
JSON_EXTRACT(properties, '$.role') as "role",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.principalType') as "principal_type",
JSON_EXTRACT(properties, '$.tenantName') as "tenant_name",
JSON_EXTRACT(properties, '$.principalName') as "principal_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.aadObjectId') as "aad_object_id",
subscriptionId,
resourceGroupName,
clusterName,
databaseName,
principalAssignmentName
FROM azure.data_explorer.database_principal_assignments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.principalId') as "principal_id",
json_extract_path_text(properties, '$.role') as "role",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.principalType') as "principal_type",
json_extract_path_text(properties, '$.tenantName') as "tenant_name",
json_extract_path_text(properties, '$.principalName') as "principal_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.aadObjectId') as "aad_object_id",
subscriptionId,
resourceGroupName,
clusterName,
databaseName,
principalAssignmentName
FROM azure.data_explorer.database_principal_assignments
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
</Tabs>
