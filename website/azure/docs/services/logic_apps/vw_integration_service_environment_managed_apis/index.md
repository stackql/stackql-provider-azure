--- 
title: vw_integration_service_environment_managed_apis
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_integration_service_environment_managed_apis
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

Creates, updates, deletes, gets or lists a <code>vw_integration_service_environment_managed_apis</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_integration_service_environment_managed_apis</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.logic_apps.vw_integration_service_environment_managed_apis" /></td></tr>
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
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.deploymentParameters') as "deployment_parameters",
JSON_EXTRACT(properties, '$.name') as "name",
JSON_EXTRACT(properties, '$.connectionParameters') as "connection_parameters",
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.runtimeUrls') as "runtime_urls",
JSON_EXTRACT(properties, '$.generalInformation') as "general_information",
JSON_EXTRACT(properties, '$.capabilities') as "capabilities",
JSON_EXTRACT(properties, '$.backendService') as "backend_service",
JSON_EXTRACT(properties, '$.policies') as "policies",
JSON_EXTRACT(properties, '$.apiDefinitionUrl') as "api_definition_url",
JSON_EXTRACT(properties, '$.apiDefinitions') as "api_definitions",
JSON_EXTRACT(properties, '$.integrationServiceEnvironment') as "integration_service_environment",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.category') as "category",
subscriptionId,
resourceGroup,
integrationServiceEnvironmentName,
apiName
FROM azure.logic_apps.integration_service_environment_managed_apis
WHERE subscriptionId = 'replace-me' AND resourceGroup = 'replace-me' AND integrationServiceEnvironmentName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.deploymentParameters') as "deployment_parameters",
json_extract_path_text(properties, '$.name') as "name",
json_extract_path_text(properties, '$.connectionParameters') as "connection_parameters",
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.runtimeUrls') as "runtime_urls",
json_extract_path_text(properties, '$.generalInformation') as "general_information",
json_extract_path_text(properties, '$.capabilities') as "capabilities",
json_extract_path_text(properties, '$.backendService') as "backend_service",
json_extract_path_text(properties, '$.policies') as "policies",
json_extract_path_text(properties, '$.apiDefinitionUrl') as "api_definition_url",
json_extract_path_text(properties, '$.apiDefinitions') as "api_definitions",
json_extract_path_text(properties, '$.integrationServiceEnvironment') as "integration_service_environment",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.category') as "category",
subscriptionId,
resourceGroup,
integrationServiceEnvironmentName,
apiName
FROM azure.logic_apps.integration_service_environment_managed_apis
WHERE subscriptionId = 'replace-me' AND resourceGroup = 'replace-me' AND integrationServiceEnvironmentName = 'replace-me';
```

</TabItem>
</Tabs>
