--- 
title: vw_configuration_snapshot_slots
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_configuration_snapshot_slots
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

Creates, updates, deletes, gets or lists a <code>vw_configuration_snapshot_slots</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_configuration_snapshot_slots</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.vw_configuration_snapshot_slots" /></td></tr>
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
kind as kind,
type as type,
JSON_EXTRACT(properties, '$.numberOfWorkers') as "number_of_workers",
JSON_EXTRACT(properties, '$.defaultDocuments') as "default_documents",
JSON_EXTRACT(properties, '$.netFrameworkVersion') as "net_framework_version",
JSON_EXTRACT(properties, '$.phpVersion') as "php_version",
JSON_EXTRACT(properties, '$.pythonVersion') as "python_version",
JSON_EXTRACT(properties, '$.nodeVersion') as "node_version",
JSON_EXTRACT(properties, '$.powerShellVersion') as "power_shell_version",
JSON_EXTRACT(properties, '$.linuxFxVersion') as "linux_fx_version",
JSON_EXTRACT(properties, '$.windowsFxVersion') as "windows_fx_version",
JSON_EXTRACT(properties, '$.requestTracingEnabled') as "request_tracing_enabled",
JSON_EXTRACT(properties, '$.requestTracingExpirationTime') as "request_tracing_expiration_time",
JSON_EXTRACT(properties, '$.remoteDebuggingEnabled') as "remote_debugging_enabled",
JSON_EXTRACT(properties, '$.remoteDebuggingVersion') as "remote_debugging_version",
JSON_EXTRACT(properties, '$.httpLoggingEnabled') as "http_logging_enabled",
JSON_EXTRACT(properties, '$.acrUseManagedIdentityCreds') as "acr_use_managed_identity_creds",
JSON_EXTRACT(properties, '$.acrUserManagedIdentityID') as "acr_user_managed_identity_id",
JSON_EXTRACT(properties, '$.logsDirectorySizeLimit') as "logs_directory_size_limit",
JSON_EXTRACT(properties, '$.detailedErrorLoggingEnabled') as "detailed_error_logging_enabled",
JSON_EXTRACT(properties, '$.publishingUsername') as "publishing_username",
JSON_EXTRACT(properties, '$.appSettings') as "app_settings",
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.connectionStrings') as "connection_strings",
JSON_EXTRACT(properties, '$.machineKey') as "machine_key",
JSON_EXTRACT(properties, '$.handlerMappings') as "handler_mappings",
JSON_EXTRACT(properties, '$.documentRoot') as "document_root",
JSON_EXTRACT(properties, '$.scmType') as "scm_type",
JSON_EXTRACT(properties, '$.use32BitWorkerProcess') as "use32_bit_worker_process",
JSON_EXTRACT(properties, '$.webSocketsEnabled') as "web_sockets_enabled",
JSON_EXTRACT(properties, '$.alwaysOn') as "always_on",
JSON_EXTRACT(properties, '$.javaVersion') as "java_version",
JSON_EXTRACT(properties, '$.javaContainer') as "java_container",
JSON_EXTRACT(properties, '$.javaContainerVersion') as "java_container_version",
JSON_EXTRACT(properties, '$.appCommandLine') as "app_command_line",
JSON_EXTRACT(properties, '$.managedPipelineMode') as "managed_pipeline_mode",
JSON_EXTRACT(properties, '$.virtualApplications') as "virtual_applications",
JSON_EXTRACT(properties, '$.loadBalancing') as "load_balancing",
JSON_EXTRACT(properties, '$.experiments') as "experiments",
JSON_EXTRACT(properties, '$.limits') as "limits",
JSON_EXTRACT(properties, '$.autoHealEnabled') as "auto_heal_enabled",
JSON_EXTRACT(properties, '$.autoHealRules') as "auto_heal_rules",
JSON_EXTRACT(properties, '$.tracingOptions') as "tracing_options",
JSON_EXTRACT(properties, '$.vnetName') as "vnet_name",
JSON_EXTRACT(properties, '$.vnetRouteAllEnabled') as "vnet_route_all_enabled",
JSON_EXTRACT(properties, '$.vnetPrivatePortsCount') as "vnet_private_ports_count",
JSON_EXTRACT(properties, '$.cors') as "cors",
JSON_EXTRACT(properties, '$.push') as "push",
JSON_EXTRACT(properties, '$.apiDefinition') as "api_definition",
JSON_EXTRACT(properties, '$.apiManagementConfig') as "api_management_config",
JSON_EXTRACT(properties, '$.autoSwapSlotName') as "auto_swap_slot_name",
JSON_EXTRACT(properties, '$.localMySqlEnabled') as "local_my_sql_enabled",
JSON_EXTRACT(properties, '$.managedServiceIdentityId') as "managed_service_identity_id",
JSON_EXTRACT(properties, '$.xManagedServiceIdentityId') as "x_managed_service_identity_id",
JSON_EXTRACT(properties, '$.keyVaultReferenceIdentity') as "key_vault_reference_identity",
JSON_EXTRACT(properties, '$.ipSecurityRestrictions') as "ip_security_restrictions",
JSON_EXTRACT(properties, '$.ipSecurityRestrictionsDefaultAction') as "ip_security_restrictions_default_action",
JSON_EXTRACT(properties, '$.scmIpSecurityRestrictions') as "scm_ip_security_restrictions",
JSON_EXTRACT(properties, '$.scmIpSecurityRestrictionsDefaultAction') as "scm_ip_security_restrictions_default_action",
JSON_EXTRACT(properties, '$.scmIpSecurityRestrictionsUseMain') as "scm_ip_security_restrictions_use_main",
JSON_EXTRACT(properties, '$.http20Enabled') as "http20_enabled",
JSON_EXTRACT(properties, '$.minTlsVersion') as "min_tls_version",
JSON_EXTRACT(properties, '$.minTlsCipherSuite') as "min_tls_cipher_suite",
JSON_EXTRACT(properties, '$.scmMinTlsVersion') as "scm_min_tls_version",
JSON_EXTRACT(properties, '$.ftpsState') as "ftps_state",
JSON_EXTRACT(properties, '$.preWarmedInstanceCount') as "pre_warmed_instance_count",
JSON_EXTRACT(properties, '$.functionAppScaleLimit') as "function_app_scale_limit",
JSON_EXTRACT(properties, '$.elasticWebAppScaleLimit') as "elastic_web_app_scale_limit",
JSON_EXTRACT(properties, '$.healthCheckPath') as "health_check_path",
JSON_EXTRACT(properties, '$.functionsRuntimeScaleMonitoringEnabled') as "functions_runtime_scale_monitoring_enabled",
JSON_EXTRACT(properties, '$.websiteTimeZone') as "website_time_zone",
JSON_EXTRACT(properties, '$.minimumElasticInstanceCount') as "minimum_elastic_instance_count",
JSON_EXTRACT(properties, '$.azureStorageAccounts') as "azure_storage_accounts",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
subscriptionId,
resourceGroupName,
name,
slot,
snapshotId
FROM azure.app_service.configuration_snapshot_slots
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND name = 'replace-me' AND slot = 'replace-me' AND snapshotId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
kind as kind,
type as type,
json_extract_path_text(properties, '$.numberOfWorkers') as "number_of_workers",
json_extract_path_text(properties, '$.defaultDocuments') as "default_documents",
json_extract_path_text(properties, '$.netFrameworkVersion') as "net_framework_version",
json_extract_path_text(properties, '$.phpVersion') as "php_version",
json_extract_path_text(properties, '$.pythonVersion') as "python_version",
json_extract_path_text(properties, '$.nodeVersion') as "node_version",
json_extract_path_text(properties, '$.powerShellVersion') as "power_shell_version",
json_extract_path_text(properties, '$.linuxFxVersion') as "linux_fx_version",
json_extract_path_text(properties, '$.windowsFxVersion') as "windows_fx_version",
json_extract_path_text(properties, '$.requestTracingEnabled') as "request_tracing_enabled",
json_extract_path_text(properties, '$.requestTracingExpirationTime') as "request_tracing_expiration_time",
json_extract_path_text(properties, '$.remoteDebuggingEnabled') as "remote_debugging_enabled",
json_extract_path_text(properties, '$.remoteDebuggingVersion') as "remote_debugging_version",
json_extract_path_text(properties, '$.httpLoggingEnabled') as "http_logging_enabled",
json_extract_path_text(properties, '$.acrUseManagedIdentityCreds') as "acr_use_managed_identity_creds",
json_extract_path_text(properties, '$.acrUserManagedIdentityID') as "acr_user_managed_identity_id",
json_extract_path_text(properties, '$.logsDirectorySizeLimit') as "logs_directory_size_limit",
json_extract_path_text(properties, '$.detailedErrorLoggingEnabled') as "detailed_error_logging_enabled",
json_extract_path_text(properties, '$.publishingUsername') as "publishing_username",
json_extract_path_text(properties, '$.appSettings') as "app_settings",
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.connectionStrings') as "connection_strings",
json_extract_path_text(properties, '$.machineKey') as "machine_key",
json_extract_path_text(properties, '$.handlerMappings') as "handler_mappings",
json_extract_path_text(properties, '$.documentRoot') as "document_root",
json_extract_path_text(properties, '$.scmType') as "scm_type",
json_extract_path_text(properties, '$.use32BitWorkerProcess') as "use32_bit_worker_process",
json_extract_path_text(properties, '$.webSocketsEnabled') as "web_sockets_enabled",
json_extract_path_text(properties, '$.alwaysOn') as "always_on",
json_extract_path_text(properties, '$.javaVersion') as "java_version",
json_extract_path_text(properties, '$.javaContainer') as "java_container",
json_extract_path_text(properties, '$.javaContainerVersion') as "java_container_version",
json_extract_path_text(properties, '$.appCommandLine') as "app_command_line",
json_extract_path_text(properties, '$.managedPipelineMode') as "managed_pipeline_mode",
json_extract_path_text(properties, '$.virtualApplications') as "virtual_applications",
json_extract_path_text(properties, '$.loadBalancing') as "load_balancing",
json_extract_path_text(properties, '$.experiments') as "experiments",
json_extract_path_text(properties, '$.limits') as "limits",
json_extract_path_text(properties, '$.autoHealEnabled') as "auto_heal_enabled",
json_extract_path_text(properties, '$.autoHealRules') as "auto_heal_rules",
json_extract_path_text(properties, '$.tracingOptions') as "tracing_options",
json_extract_path_text(properties, '$.vnetName') as "vnet_name",
json_extract_path_text(properties, '$.vnetRouteAllEnabled') as "vnet_route_all_enabled",
json_extract_path_text(properties, '$.vnetPrivatePortsCount') as "vnet_private_ports_count",
json_extract_path_text(properties, '$.cors') as "cors",
json_extract_path_text(properties, '$.push') as "push",
json_extract_path_text(properties, '$.apiDefinition') as "api_definition",
json_extract_path_text(properties, '$.apiManagementConfig') as "api_management_config",
json_extract_path_text(properties, '$.autoSwapSlotName') as "auto_swap_slot_name",
json_extract_path_text(properties, '$.localMySqlEnabled') as "local_my_sql_enabled",
json_extract_path_text(properties, '$.managedServiceIdentityId') as "managed_service_identity_id",
json_extract_path_text(properties, '$.xManagedServiceIdentityId') as "x_managed_service_identity_id",
json_extract_path_text(properties, '$.keyVaultReferenceIdentity') as "key_vault_reference_identity",
json_extract_path_text(properties, '$.ipSecurityRestrictions') as "ip_security_restrictions",
json_extract_path_text(properties, '$.ipSecurityRestrictionsDefaultAction') as "ip_security_restrictions_default_action",
json_extract_path_text(properties, '$.scmIpSecurityRestrictions') as "scm_ip_security_restrictions",
json_extract_path_text(properties, '$.scmIpSecurityRestrictionsDefaultAction') as "scm_ip_security_restrictions_default_action",
json_extract_path_text(properties, '$.scmIpSecurityRestrictionsUseMain') as "scm_ip_security_restrictions_use_main",
json_extract_path_text(properties, '$.http20Enabled') as "http20_enabled",
json_extract_path_text(properties, '$.minTlsVersion') as "min_tls_version",
json_extract_path_text(properties, '$.minTlsCipherSuite') as "min_tls_cipher_suite",
json_extract_path_text(properties, '$.scmMinTlsVersion') as "scm_min_tls_version",
json_extract_path_text(properties, '$.ftpsState') as "ftps_state",
json_extract_path_text(properties, '$.preWarmedInstanceCount') as "pre_warmed_instance_count",
json_extract_path_text(properties, '$.functionAppScaleLimit') as "function_app_scale_limit",
json_extract_path_text(properties, '$.elasticWebAppScaleLimit') as "elastic_web_app_scale_limit",
json_extract_path_text(properties, '$.healthCheckPath') as "health_check_path",
json_extract_path_text(properties, '$.functionsRuntimeScaleMonitoringEnabled') as "functions_runtime_scale_monitoring_enabled",
json_extract_path_text(properties, '$.websiteTimeZone') as "website_time_zone",
json_extract_path_text(properties, '$.minimumElasticInstanceCount') as "minimum_elastic_instance_count",
json_extract_path_text(properties, '$.azureStorageAccounts') as "azure_storage_accounts",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
subscriptionId,
resourceGroupName,
name,
slot,
snapshotId
FROM azure.app_service.configuration_snapshot_slots
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND name = 'replace-me' AND slot = 'replace-me' AND snapshotId = 'replace-me';
```

</TabItem>
</Tabs>
