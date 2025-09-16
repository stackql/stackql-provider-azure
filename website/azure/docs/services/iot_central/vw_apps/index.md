--- 
title: vw_apps
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_apps
  - iot_central
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

Creates, updates, deletes, gets or lists a <code>vw_apps</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_apps</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_central.vw_apps" /></td></tr>
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
sku as sku,
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.applicationId') as "application_id",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.subdomain') as "subdomain",
JSON_EXTRACT(properties, '$.template') as "template",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.networkRuleSets') as "network_rule_sets",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.iot_central.apps
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
sku as sku,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.applicationId') as "application_id",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.subdomain') as "subdomain",
json_extract_path_text(properties, '$.template') as "template",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.networkRuleSets') as "network_rule_sets",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.iot_central.apps
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
