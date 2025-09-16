--- 
title: vw_gateways
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_gateways
  - spring_apps
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

Creates, updates, deletes, gets or lists a <code>vw_gateways</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_gateways</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.spring_apps.vw_gateways" /></td></tr>
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
sku as sku,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.public') as "public",
JSON_EXTRACT(properties, '$.url') as "url",
JSON_EXTRACT(properties, '$.httpsOnly') as "https_only",
JSON_EXTRACT(properties, '$.ssoProperties') as "sso_properties",
JSON_EXTRACT(properties, '$.apiMetadataProperties') as "api_metadata_properties",
JSON_EXTRACT(properties, '$.corsProperties') as "cors_properties",
JSON_EXTRACT(properties, '$.clientAuth') as "client_auth",
JSON_EXTRACT(properties, '$.apmTypes') as "apm_types",
JSON_EXTRACT(properties, '$.apms') as "apms",
JSON_EXTRACT(properties, '$.environmentVariables') as "environment_variables",
JSON_EXTRACT(properties, '$.resourceRequests') as "resource_requests",
JSON_EXTRACT(properties, '$.addonConfigs') as "addon_configs",
JSON_EXTRACT(properties, '$.instances') as "instances",
JSON_EXTRACT(properties, '$.operatorProperties') as "operator_properties",
JSON_EXTRACT(properties, '$.responseCacheProperties') as "response_cache_properties",
subscriptionId,
resourceGroupName,
serviceName,
gatewayName
FROM azure.spring_apps.gateways
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
sku as sku,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.public') as "public",
json_extract_path_text(properties, '$.url') as "url",
json_extract_path_text(properties, '$.httpsOnly') as "https_only",
json_extract_path_text(properties, '$.ssoProperties') as "sso_properties",
json_extract_path_text(properties, '$.apiMetadataProperties') as "api_metadata_properties",
json_extract_path_text(properties, '$.corsProperties') as "cors_properties",
json_extract_path_text(properties, '$.clientAuth') as "client_auth",
json_extract_path_text(properties, '$.apmTypes') as "apm_types",
json_extract_path_text(properties, '$.apms') as "apms",
json_extract_path_text(properties, '$.environmentVariables') as "environment_variables",
json_extract_path_text(properties, '$.resourceRequests') as "resource_requests",
json_extract_path_text(properties, '$.addonConfigs') as "addon_configs",
json_extract_path_text(properties, '$.instances') as "instances",
json_extract_path_text(properties, '$.operatorProperties') as "operator_properties",
json_extract_path_text(properties, '$.responseCacheProperties') as "response_cache_properties",
subscriptionId,
resourceGroupName,
serviceName,
gatewayName
FROM azure.spring_apps.gateways
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
