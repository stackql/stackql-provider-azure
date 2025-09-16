--- 
title: vw_static_sites
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_static_sites
  - app_service
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

Creates, updates, deletes, gets or lists a <code>vw_static_sites</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_static_sites</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.vw_static_sites" /></td></tr>
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
sku as sku,
identity as identity,
JSON_EXTRACT(properties, '$.defaultHostname') as "default_hostname",
JSON_EXTRACT(properties, '$.repositoryUrl') as "repository_url",
JSON_EXTRACT(properties, '$.branch') as "branch",
JSON_EXTRACT(properties, '$.customDomains') as "custom_domains",
JSON_EXTRACT(properties, '$.repositoryToken') as "repository_token",
JSON_EXTRACT(properties, '$.buildProperties') as "build_properties",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.stagingEnvironmentPolicy') as "staging_environment_policy",
JSON_EXTRACT(properties, '$.allowConfigFileUpdates') as "allow_config_file_updates",
JSON_EXTRACT(properties, '$.templateProperties') as "template_properties",
JSON_EXTRACT(properties, '$.contentDistributionEndpoint') as "content_distribution_endpoint",
JSON_EXTRACT(properties, '$.keyVaultReferenceIdentity') as "key_vault_reference_identity",
JSON_EXTRACT(properties, '$.userProvidedFunctionApps') as "user_provided_function_apps",
JSON_EXTRACT(properties, '$.linkedBackends') as "linked_backends",
JSON_EXTRACT(properties, '$.provider') as "provider",
JSON_EXTRACT(properties, '$.enterpriseGradeCdnStatus') as "enterprise_grade_cdn_status",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.databaseConnections') as "database_connections",
subscriptionId,
resourceGroupName,
name
FROM azure.app_service.static_sites
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
sku as sku,
identity as identity,
json_extract_path_text(properties, '$.defaultHostname') as "default_hostname",
json_extract_path_text(properties, '$.repositoryUrl') as "repository_url",
json_extract_path_text(properties, '$.branch') as "branch",
json_extract_path_text(properties, '$.customDomains') as "custom_domains",
json_extract_path_text(properties, '$.repositoryToken') as "repository_token",
json_extract_path_text(properties, '$.buildProperties') as "build_properties",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.stagingEnvironmentPolicy') as "staging_environment_policy",
json_extract_path_text(properties, '$.allowConfigFileUpdates') as "allow_config_file_updates",
json_extract_path_text(properties, '$.templateProperties') as "template_properties",
json_extract_path_text(properties, '$.contentDistributionEndpoint') as "content_distribution_endpoint",
json_extract_path_text(properties, '$.keyVaultReferenceIdentity') as "key_vault_reference_identity",
json_extract_path_text(properties, '$.userProvidedFunctionApps') as "user_provided_function_apps",
json_extract_path_text(properties, '$.linkedBackends') as "linked_backends",
json_extract_path_text(properties, '$.provider') as "provider",
json_extract_path_text(properties, '$.enterpriseGradeCdnStatus') as "enterprise_grade_cdn_status",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.databaseConnections') as "database_connections",
subscriptionId,
resourceGroupName,
name
FROM azure.app_service.static_sites
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
