--- 
title: vw_api_collections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_api_collections
  - security
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

Creates, updates, deletes, gets or lists a <code>vw_api_collections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_api_collections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_api_collections" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.discoveredVia') as "discovered_via",
JSON_EXTRACT(properties, '$.baseUrl') as "base_url",
JSON_EXTRACT(properties, '$.numberOfApiEndpoints') as "number_of_api_endpoints",
JSON_EXTRACT(properties, '$.numberOfInactiveApiEndpoints') as "number_of_inactive_api_endpoints",
JSON_EXTRACT(properties, '$.numberOfUnauthenticatedApiEndpoints') as "number_of_unauthenticated_api_endpoints",
JSON_EXTRACT(properties, '$.numberOfExternalApiEndpoints') as "number_of_external_api_endpoints",
JSON_EXTRACT(properties, '$.numberOfApiEndpointsWithSensitiveDataExposed') as "number_of_api_endpoints_with_sensitive_data_exposed",
JSON_EXTRACT(properties, '$.sensitivityLabel') as "sensitivity_label",
subscriptionId,
resourceGroupName,
serviceName,
apiId
FROM azure.security.api_collections
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.discoveredVia') as "discovered_via",
json_extract_path_text(properties, '$.baseUrl') as "base_url",
json_extract_path_text(properties, '$.numberOfApiEndpoints') as "number_of_api_endpoints",
json_extract_path_text(properties, '$.numberOfInactiveApiEndpoints') as "number_of_inactive_api_endpoints",
json_extract_path_text(properties, '$.numberOfUnauthenticatedApiEndpoints') as "number_of_unauthenticated_api_endpoints",
json_extract_path_text(properties, '$.numberOfExternalApiEndpoints') as "number_of_external_api_endpoints",
json_extract_path_text(properties, '$.numberOfApiEndpointsWithSensitiveDataExposed') as "number_of_api_endpoints_with_sensitive_data_exposed",
json_extract_path_text(properties, '$.sensitivityLabel') as "sensitivity_label",
subscriptionId,
resourceGroupName,
serviceName,
apiId
FROM azure.security.api_collections
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
