--- 
title: vw_workflows
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workflows
  - logic_apps
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

Creates, updates, deletes, gets or lists a <code>vw_workflows</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workflows</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.logic_apps.vw_workflows" /></td></tr>
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
identity as identity,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.createdTime') as "created_time",
JSON_EXTRACT(properties, '$.changedTime') as "changed_time",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.accessEndpoint') as "access_endpoint",
JSON_EXTRACT(properties, '$.endpointsConfiguration') as "endpoints_configuration",
JSON_EXTRACT(properties, '$.accessControl') as "access_control",
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.integrationAccount') as "integration_account",
JSON_EXTRACT(properties, '$.integrationServiceEnvironment') as "integration_service_environment",
JSON_EXTRACT(properties, '$.definition') as "definition",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
subscriptionId,
resourceGroupName,
workflowName
FROM azure.logic_apps.workflows
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
identity as identity,
type as type,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.createdTime') as "created_time",
json_extract_path_text(properties, '$.changedTime') as "changed_time",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.accessEndpoint') as "access_endpoint",
json_extract_path_text(properties, '$.endpointsConfiguration') as "endpoints_configuration",
json_extract_path_text(properties, '$.accessControl') as "access_control",
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.integrationAccount') as "integration_account",
json_extract_path_text(properties, '$.integrationServiceEnvironment') as "integration_service_environment",
json_extract_path_text(properties, '$.definition') as "definition",
json_extract_path_text(properties, '$.parameters') as "parameters",
subscriptionId,
resourceGroupName,
workflowName
FROM azure.logic_apps.workflows
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
