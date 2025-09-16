--- 
title: vw_digital_twins
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_digital_twins
  - digital_twins
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

Creates, updates, deletes, gets or lists a <code>vw_digital_twins</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_digital_twins</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.digital_twins.vw_digital_twins" /></td></tr>
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
tags as tags,
identity as identity,
systemData as system_data,
JSON_EXTRACT(properties, '$.createdTime') as "created_time",
JSON_EXTRACT(properties, '$.lastUpdatedTime') as "last_updated_time",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.hostName') as "host_name",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.digital_twins.digital_twins
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
tags as tags,
identity as identity,
systemData as system_data,
json_extract_path_text(properties, '$.createdTime') as "created_time",
json_extract_path_text(properties, '$.lastUpdatedTime') as "last_updated_time",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.hostName') as "host_name",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.digital_twins.digital_twins
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
