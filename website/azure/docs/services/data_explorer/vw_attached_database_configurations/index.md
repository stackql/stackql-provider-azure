--- 
title: vw_attached_database_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_attached_database_configurations
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

Creates, updates, deletes, gets or lists a <code>vw_attached_database_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_attached_database_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_explorer.vw_attached_database_configurations" /></td></tr>
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
location as location,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.databaseName') as "database_name",
JSON_EXTRACT(properties, '$.clusterResourceId') as "cluster_resource_id",
JSON_EXTRACT(properties, '$.attachedDatabaseNames') as "attached_database_names",
JSON_EXTRACT(properties, '$.defaultPrincipalsModificationKind') as "default_principals_modification_kind",
JSON_EXTRACT(properties, '$.tableLevelSharingProperties') as "table_level_sharing_properties",
JSON_EXTRACT(properties, '$.databaseNameOverride') as "database_name_override",
JSON_EXTRACT(properties, '$.databaseNamePrefix') as "database_name_prefix",
subscriptionId,
resourceGroupName,
clusterName,
attachedDatabaseConfigurationName
FROM azure.data_explorer.attached_database_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.databaseName') as "database_name",
json_extract_path_text(properties, '$.clusterResourceId') as "cluster_resource_id",
json_extract_path_text(properties, '$.attachedDatabaseNames') as "attached_database_names",
json_extract_path_text(properties, '$.defaultPrincipalsModificationKind') as "default_principals_modification_kind",
json_extract_path_text(properties, '$.tableLevelSharingProperties') as "table_level_sharing_properties",
json_extract_path_text(properties, '$.databaseNameOverride') as "database_name_override",
json_extract_path_text(properties, '$.databaseNamePrefix') as "database_name_prefix",
subscriptionId,
resourceGroupName,
clusterName,
attachedDatabaseConfigurationName
FROM azure.data_explorer.attached_database_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND clusterName = 'replace-me';
```

</TabItem>
</Tabs>
