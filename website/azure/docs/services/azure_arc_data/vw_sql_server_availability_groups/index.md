--- 
title: vw_sql_server_availability_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sql_server_availability_groups
  - azure_arc_data
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

Creates, updates, deletes, gets or lists a <code>vw_sql_server_availability_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sql_server_availability_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.azure_arc_data.vw_sql_server_availability_groups" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.availabilityGroupId') as "availability_group_id",
JSON_EXTRACT(properties, '$.serverName') as "server_name",
JSON_EXTRACT(properties, '$.instanceName') as "instance_name",
JSON_EXTRACT(properties, '$.collectionTimestamp') as "collection_timestamp",
JSON_EXTRACT(properties, '$.info') as "info",
JSON_EXTRACT(properties, '$.replicas') as "replicas",
JSON_EXTRACT(properties, '$.databases') as "databases",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
sqlServerInstanceName,
availabilityGroupName
FROM azure.azure_arc_data.sql_server_availability_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND sqlServerInstanceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.availabilityGroupId') as "availability_group_id",
json_extract_path_text(properties, '$.serverName') as "server_name",
json_extract_path_text(properties, '$.instanceName') as "instance_name",
json_extract_path_text(properties, '$.collectionTimestamp') as "collection_timestamp",
json_extract_path_text(properties, '$.info') as "info",
json_extract_path_text(properties, '$.replicas') as "replicas",
json_extract_path_text(properties, '$.databases') as "databases",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
sqlServerInstanceName,
availabilityGroupName
FROM azure.azure_arc_data.sql_server_availability_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND sqlServerInstanceName = 'replace-me';
```

</TabItem>
</Tabs>
