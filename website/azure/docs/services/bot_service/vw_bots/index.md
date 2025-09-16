--- 
title: vw_bots
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_bots
  - bot_service
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

Creates, updates, deletes, gets or lists a <code>vw_bots</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_bots</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.bot_service.vw_bots" /></td></tr>
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
sku as sku,
kind as kind,
etag as etag,
zones as zones,
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.iconUrl') as "icon_url",
JSON_EXTRACT(properties, '$.endpoint') as "endpoint",
JSON_EXTRACT(properties, '$.endpointVersion') as "endpoint_version",
JSON_EXTRACT(properties, '$.allSettings') as "all_settings",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
JSON_EXTRACT(properties, '$.manifestUrl') as "manifest_url",
JSON_EXTRACT(properties, '$.msaAppType') as "msa_app_type",
JSON_EXTRACT(properties, '$.msaAppId') as "msa_app_id",
JSON_EXTRACT(properties, '$.msaAppTenantId') as "msa_app_tenant_id",
JSON_EXTRACT(properties, '$.msaAppMSIResourceId') as "msa_app_msi_resource_id",
JSON_EXTRACT(properties, '$.configuredChannels') as "configured_channels",
JSON_EXTRACT(properties, '$.enabledChannels') as "enabled_channels",
JSON_EXTRACT(properties, '$.developerAppInsightKey') as "developer_app_insight_key",
JSON_EXTRACT(properties, '$.developerAppInsightsApiKey') as "developer_app_insights_api_key",
JSON_EXTRACT(properties, '$.developerAppInsightsApplicationId') as "developer_app_insights_application_id",
JSON_EXTRACT(properties, '$.luisAppIds') as "luis_app_ids",
JSON_EXTRACT(properties, '$.luisKey') as "luis_key",
JSON_EXTRACT(properties, '$.isCmekEnabled') as "is_cmek_enabled",
JSON_EXTRACT(properties, '$.cmekKeyVaultUrl') as "cmek_key_vault_url",
JSON_EXTRACT(properties, '$.cmekEncryptionStatus') as "cmek_encryption_status",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.isStreamingSupported') as "is_streaming_supported",
JSON_EXTRACT(properties, '$.isDeveloperAppInsightsApiKeySet') as "is_developer_app_insights_api_key_set",
JSON_EXTRACT(properties, '$.migrationToken') as "migration_token",
JSON_EXTRACT(properties, '$.disableLocalAuth') as "disable_local_auth",
JSON_EXTRACT(properties, '$.schemaTransformationVersion') as "schema_transformation_version",
JSON_EXTRACT(properties, '$.storageResourceId') as "storage_resource_id",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.networkSecurityPerimeterConfigurations') as "network_security_perimeter_configurations",
JSON_EXTRACT(properties, '$.openWithHint') as "open_with_hint",
JSON_EXTRACT(properties, '$.appPasswordHint') as "app_password_hint",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.publishingCredentials') as "publishing_credentials",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.bot_service.bots
WHERE subscriptionId = 'replace-me';
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
sku as sku,
kind as kind,
etag as etag,
zones as zones,
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.iconUrl') as "icon_url",
json_extract_path_text(properties, '$.endpoint') as "endpoint",
json_extract_path_text(properties, '$.endpointVersion') as "endpoint_version",
json_extract_path_text(properties, '$.allSettings') as "all_settings",
json_extract_path_text(properties, '$.parameters') as "parameters",
json_extract_path_text(properties, '$.manifestUrl') as "manifest_url",
json_extract_path_text(properties, '$.msaAppType') as "msa_app_type",
json_extract_path_text(properties, '$.msaAppId') as "msa_app_id",
json_extract_path_text(properties, '$.msaAppTenantId') as "msa_app_tenant_id",
json_extract_path_text(properties, '$.msaAppMSIResourceId') as "msa_app_msi_resource_id",
json_extract_path_text(properties, '$.configuredChannels') as "configured_channels",
json_extract_path_text(properties, '$.enabledChannels') as "enabled_channels",
json_extract_path_text(properties, '$.developerAppInsightKey') as "developer_app_insight_key",
json_extract_path_text(properties, '$.developerAppInsightsApiKey') as "developer_app_insights_api_key",
json_extract_path_text(properties, '$.developerAppInsightsApplicationId') as "developer_app_insights_application_id",
json_extract_path_text(properties, '$.luisAppIds') as "luis_app_ids",
json_extract_path_text(properties, '$.luisKey') as "luis_key",
json_extract_path_text(properties, '$.isCmekEnabled') as "is_cmek_enabled",
json_extract_path_text(properties, '$.cmekKeyVaultUrl') as "cmek_key_vault_url",
json_extract_path_text(properties, '$.cmekEncryptionStatus') as "cmek_encryption_status",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.isStreamingSupported') as "is_streaming_supported",
json_extract_path_text(properties, '$.isDeveloperAppInsightsApiKeySet') as "is_developer_app_insights_api_key_set",
json_extract_path_text(properties, '$.migrationToken') as "migration_token",
json_extract_path_text(properties, '$.disableLocalAuth') as "disable_local_auth",
json_extract_path_text(properties, '$.schemaTransformationVersion') as "schema_transformation_version",
json_extract_path_text(properties, '$.storageResourceId') as "storage_resource_id",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.networkSecurityPerimeterConfigurations') as "network_security_perimeter_configurations",
json_extract_path_text(properties, '$.openWithHint') as "open_with_hint",
json_extract_path_text(properties, '$.appPasswordHint') as "app_password_hint",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.publishingCredentials') as "publishing_credentials",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.bot_service.bots
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
