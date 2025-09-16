--- 
title: vw_network_functions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_network_functions
  - mpc_network_function
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

Creates, updates, deletes, gets or lists a <code>vw_network_functions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_network_functions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mpc_network_function.vw_network_functions" /></td></tr>
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
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.networkFunctionType') as "network_function_type",
JSON_EXTRACT(properties, '$.networkFunctionAdministrativeState') as "network_function_administrative_state",
JSON_EXTRACT(properties, '$.networkFunctionOperationalStatus') as "network_function_operational_status",
JSON_EXTRACT(properties, '$.infrastructureElementCount') as "infrastructure_element_count",
JSON_EXTRACT(properties, '$.capacity') as "capacity",
JSON_EXTRACT(properties, '$.userDescription') as "user_description",
JSON_EXTRACT(properties, '$.deploymentNotes') as "deployment_notes",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
networkFunctionName
FROM azure.mpc_network_function.network_functions
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.networkFunctionType') as "network_function_type",
json_extract_path_text(properties, '$.networkFunctionAdministrativeState') as "network_function_administrative_state",
json_extract_path_text(properties, '$.networkFunctionOperationalStatus') as "network_function_operational_status",
json_extract_path_text(properties, '$.infrastructureElementCount') as "infrastructure_element_count",
json_extract_path_text(properties, '$.capacity') as "capacity",
json_extract_path_text(properties, '$.userDescription') as "user_description",
json_extract_path_text(properties, '$.deploymentNotes') as "deployment_notes",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
networkFunctionName
FROM azure.mpc_network_function.network_functions
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
