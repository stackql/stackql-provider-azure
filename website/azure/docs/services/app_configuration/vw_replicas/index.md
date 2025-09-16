--- 
title: vw_replicas
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replicas
  - app_configuration
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

Creates, updates, deletes, gets or lists a <code>vw_replicas</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replicas</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_configuration.vw_replicas" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.endpoint') as "endpoint",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
configStoreName,
replicaName
FROM azure.app_configuration.replicas
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND configStoreName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.endpoint') as "endpoint",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
configStoreName,
replicaName
FROM azure.app_configuration.replicas
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND configStoreName = 'replace-me';
```

</TabItem>
</Tabs>
