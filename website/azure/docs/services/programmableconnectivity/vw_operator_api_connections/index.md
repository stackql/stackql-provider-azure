--- 
title: vw_operator_api_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_operator_api_connections
  - programmableconnectivity
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

Creates, updates, deletes, gets or lists a <code>vw_operator_api_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_operator_api_connections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.programmableconnectivity.vw_operator_api_connections" /></td></tr>
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
JSON_EXTRACT(properties, '$.operatorApiPlanId') as "operator_api_plan_id",
JSON_EXTRACT(properties, '$.saasProperties') as "saas_properties",
JSON_EXTRACT(properties, '$.configuredApplication') as "configured_application",
JSON_EXTRACT(properties, '$.appId') as "app_id",
JSON_EXTRACT(properties, '$.gatewayId') as "gateway_id",
JSON_EXTRACT(properties, '$.accountType') as "account_type",
JSON_EXTRACT(properties, '$.appSecret') as "app_secret",
JSON_EXTRACT(properties, '$.operatorName') as "operator_name",
JSON_EXTRACT(properties, '$.camaraApiName') as "camara_api_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
operatorApiConnectionName
FROM azure.programmableconnectivity.operator_api_connections
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.operatorApiPlanId') as "operator_api_plan_id",
json_extract_path_text(properties, '$.saasProperties') as "saas_properties",
json_extract_path_text(properties, '$.configuredApplication') as "configured_application",
json_extract_path_text(properties, '$.appId') as "app_id",
json_extract_path_text(properties, '$.gatewayId') as "gateway_id",
json_extract_path_text(properties, '$.accountType') as "account_type",
json_extract_path_text(properties, '$.appSecret') as "app_secret",
json_extract_path_text(properties, '$.operatorName') as "operator_name",
json_extract_path_text(properties, '$.camaraApiName') as "camara_api_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
operatorApiConnectionName
FROM azure.programmableconnectivity.operator_api_connections
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
