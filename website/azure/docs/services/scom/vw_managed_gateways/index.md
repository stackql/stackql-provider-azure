--- 
title: vw_managed_gateways
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_managed_gateways
  - scom
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

Creates, updates, deletes, gets or lists a <code>vw_managed_gateways</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_managed_gateways</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.scom.vw_managed_gateways" /></td></tr>
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
JSON_EXTRACT(properties, '$.resourceId') as "resource_id",
JSON_EXTRACT(properties, '$.resourceLocation') as "resource_location",
JSON_EXTRACT(properties, '$.computerName') as "computer_name",
JSON_EXTRACT(properties, '$.domainName') as "domain_name",
JSON_EXTRACT(properties, '$.managementServerEndpoint') as "management_server_endpoint",
JSON_EXTRACT(properties, '$.healthStatus') as "health_status",
JSON_EXTRACT(properties, '$.connectionStatus') as "connection_status",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.installType') as "install_type",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
instanceName,
managedGatewayName
FROM azure.scom.managed_gateways
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND instanceName = 'replace-me' AND managedGatewayName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.resourceId') as "resource_id",
json_extract_path_text(properties, '$.resourceLocation') as "resource_location",
json_extract_path_text(properties, '$.computerName') as "computer_name",
json_extract_path_text(properties, '$.domainName') as "domain_name",
json_extract_path_text(properties, '$.managementServerEndpoint') as "management_server_endpoint",
json_extract_path_text(properties, '$.healthStatus') as "health_status",
json_extract_path_text(properties, '$.connectionStatus') as "connection_status",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.installType') as "install_type",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
instanceName,
managedGatewayName
FROM azure.scom.managed_gateways
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND instanceName = 'replace-me' AND managedGatewayName = 'replace-me';
```

</TabItem>
</Tabs>
