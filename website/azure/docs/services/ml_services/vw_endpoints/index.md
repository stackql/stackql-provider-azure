--- 
title: vw_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_endpoints
  - ml_services
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

Creates, updates, deletes, gets or lists a <code>vw_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.vw_endpoints" /></td></tr>
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
JSON_EXTRACT(properties, '$.associatedResourceId') as "associated_resource_id",
JSON_EXTRACT(properties, '$.deployments') as "deployments",
JSON_EXTRACT(properties, '$.endpointType') as "endpoint_type",
JSON_EXTRACT(properties, '$.endpointUri') as "endpoint_uri",
JSON_EXTRACT(properties, '$.failureReason') as "failure_reason",
JSON_EXTRACT(properties, '$.location') as "location",
JSON_EXTRACT(properties, '$.name') as "name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.shouldCreateAiServicesEndpoint') as "should_create_ai_services_endpoint",
subscriptionId,
resourceGroupName,
workspaceName,
endpointName
FROM azure.ml_services.endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.associatedResourceId') as "associated_resource_id",
json_extract_path_text(properties, '$.deployments') as "deployments",
json_extract_path_text(properties, '$.endpointType') as "endpoint_type",
json_extract_path_text(properties, '$.endpointUri') as "endpoint_uri",
json_extract_path_text(properties, '$.failureReason') as "failure_reason",
json_extract_path_text(properties, '$.location') as "location",
json_extract_path_text(properties, '$.name') as "name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.shouldCreateAiServicesEndpoint') as "should_create_ai_services_endpoint",
subscriptionId,
resourceGroupName,
workspaceName,
endpointName
FROM azure.ml_services.endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
