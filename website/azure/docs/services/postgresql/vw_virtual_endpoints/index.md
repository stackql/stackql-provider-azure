--- 
title: vw_virtual_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_endpoints
  - postgresql
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.postgresql.vw_virtual_endpoints" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.endpointType') as "endpoint_type",
JSON_EXTRACT(properties, '$.members') as "members",
JSON_EXTRACT(properties, '$.virtualEndpoints') as "virtual_endpoints",
subscriptionId,
resourceGroupName,
serverName,
virtualEndpointName
FROM azure.postgresql.virtual_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.endpointType') as "endpoint_type",
json_extract_path_text(properties, '$.members') as "members",
json_extract_path_text(properties, '$.virtualEndpoints') as "virtual_endpoints",
subscriptionId,
resourceGroupName,
serverName,
virtualEndpointName
FROM azure.postgresql.virtual_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
</Tabs>
