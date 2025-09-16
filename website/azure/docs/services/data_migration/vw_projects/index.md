--- 
title: vw_projects
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_projects
  - data_migration
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

Creates, updates, deletes, gets or lists a <code>vw_projects</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_projects</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_migration.vw_projects" /></td></tr>
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
systemData as system_data,
etag as etag,
tags as tags,
type as type,
JSON_EXTRACT(properties, '$.sourcePlatform') as "source_platform",
JSON_EXTRACT(properties, '$.azureAuthenticationInfo') as "azure_authentication_info",
JSON_EXTRACT(properties, '$.targetPlatform') as "target_platform",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.sourceConnectionInfo') as "source_connection_info",
JSON_EXTRACT(properties, '$.targetConnectionInfo') as "target_connection_info",
JSON_EXTRACT(properties, '$.databasesInfo') as "databases_info",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
groupName,
serviceName,
projectName
FROM azure.data_migration.projects
WHERE subscriptionId = 'replace-me' AND groupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
systemData as system_data,
etag as etag,
tags as tags,
type as type,
json_extract_path_text(properties, '$.sourcePlatform') as "source_platform",
json_extract_path_text(properties, '$.azureAuthenticationInfo') as "azure_authentication_info",
json_extract_path_text(properties, '$.targetPlatform') as "target_platform",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.sourceConnectionInfo') as "source_connection_info",
json_extract_path_text(properties, '$.targetConnectionInfo') as "target_connection_info",
json_extract_path_text(properties, '$.databasesInfo') as "databases_info",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
groupName,
serviceName,
projectName
FROM azure.data_migration.projects
WHERE subscriptionId = 'replace-me' AND groupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
