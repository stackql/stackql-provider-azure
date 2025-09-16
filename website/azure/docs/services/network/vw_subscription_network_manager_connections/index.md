--- 
title: vw_subscription_network_manager_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_subscription_network_manager_connections
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_subscription_network_manager_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_subscription_network_manager_connections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_subscription_network_manager_connections" /></td></tr>
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
etag as etag,
systemData as system_data,
type as type,
JSON_EXTRACT(properties, '$.networkManagerId') as "network_manager_id",
JSON_EXTRACT(properties, '$.connectionState') as "connection_state",
JSON_EXTRACT(properties, '$.description') as "description",
subscriptionId,
networkManagerConnectionName
FROM azure.network.subscription_network_manager_connections
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
systemData as system_data,
type as type,
json_extract_path_text(properties, '$.networkManagerId') as "network_manager_id",
json_extract_path_text(properties, '$.connectionState') as "connection_state",
json_extract_path_text(properties, '$.description') as "description",
subscriptionId,
networkManagerConnectionName
FROM azure.network.subscription_network_manager_connections
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
