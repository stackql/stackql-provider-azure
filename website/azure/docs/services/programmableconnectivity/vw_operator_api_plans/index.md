--- 
title: vw_operator_api_plans
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_operator_api_plans
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

Creates, updates, deletes, gets or lists a <code>vw_operator_api_plans</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_operator_api_plans</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.programmableconnectivity.vw_operator_api_plans" /></td></tr>
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
JSON_EXTRACT(properties, '$.operatorName') as "operator_name",
JSON_EXTRACT(properties, '$.camaraApiName') as "camara_api_name",
JSON_EXTRACT(properties, '$.supportedLocations') as "supported_locations",
JSON_EXTRACT(properties, '$.operatorRegions') as "operator_regions",
JSON_EXTRACT(properties, '$.markets') as "markets",
JSON_EXTRACT(properties, '$.limits') as "limits",
JSON_EXTRACT(properties, '$.marketplaceProperties') as "marketplace_properties",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
operatorApiPlanName
FROM azure.programmableconnectivity.operator_api_plans
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.operatorName') as "operator_name",
json_extract_path_text(properties, '$.camaraApiName') as "camara_api_name",
json_extract_path_text(properties, '$.supportedLocations') as "supported_locations",
json_extract_path_text(properties, '$.operatorRegions') as "operator_regions",
json_extract_path_text(properties, '$.markets') as "markets",
json_extract_path_text(properties, '$.limits') as "limits",
json_extract_path_text(properties, '$.marketplaceProperties') as "marketplace_properties",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
operatorApiPlanName
FROM azure.programmableconnectivity.operator_api_plans
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
