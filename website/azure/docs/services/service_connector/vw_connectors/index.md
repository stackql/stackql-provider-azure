--- 
title: vw_connectors
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_connectors
  - service_connector
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

Creates, updates, deletes, gets or lists a <code>vw_connectors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_connectors</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_connector.vw_connectors" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.targetService') as "target_service",
JSON_EXTRACT(properties, '$.authInfo') as "auth_info",
JSON_EXTRACT(properties, '$.clientType') as "client_type",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.vNetSolution') as "vnet_solution",
JSON_EXTRACT(properties, '$.secretStore') as "secret_store",
JSON_EXTRACT(properties, '$.scope') as "scope",
JSON_EXTRACT(properties, '$.publicNetworkSolution') as "public_network_solution",
JSON_EXTRACT(properties, '$.configurationInfo') as "configuration_info",
subscriptionId,
resourceGroupName,
location,
connectorName
FROM azure.service_connector.connectors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.targetService') as "target_service",
json_extract_path_text(properties, '$.authInfo') as "auth_info",
json_extract_path_text(properties, '$.clientType') as "client_type",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.vNetSolution') as "vnet_solution",
json_extract_path_text(properties, '$.secretStore') as "secret_store",
json_extract_path_text(properties, '$.scope') as "scope",
json_extract_path_text(properties, '$.publicNetworkSolution') as "public_network_solution",
json_extract_path_text(properties, '$.configurationInfo') as "configuration_info",
subscriptionId,
resourceGroupName,
location,
connectorName
FROM azure.service_connector.connectors
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
