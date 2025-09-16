--- 
title: vw_clusters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_clusters
  - service_fabric
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

Creates, updates, deletes, gets or lists a <code>vw_clusters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_clusters</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_fabric.vw_clusters" /></td></tr>
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
etag as etag,
systemData as system_data,
JSON_EXTRACT(properties, '$.addOnFeatures') as "add_on_features",
JSON_EXTRACT(properties, '$.availableClusterVersions') as "available_cluster_versions",
JSON_EXTRACT(properties, '$.azureActiveDirectory') as "azure_active_directory",
JSON_EXTRACT(properties, '$.certificate') as "certificate",
JSON_EXTRACT(properties, '$.certificateCommonNames') as "certificate_common_names",
JSON_EXTRACT(properties, '$.clientCertificateCommonNames') as "client_certificate_common_names",
JSON_EXTRACT(properties, '$.clientCertificateThumbprints') as "client_certificate_thumbprints",
JSON_EXTRACT(properties, '$.clusterCodeVersion') as "cluster_code_version",
JSON_EXTRACT(properties, '$.clusterEndpoint') as "cluster_endpoint",
JSON_EXTRACT(properties, '$.clusterId') as "cluster_id",
JSON_EXTRACT(properties, '$.clusterState') as "cluster_state",
JSON_EXTRACT(properties, '$.diagnosticsStorageAccountConfig') as "diagnostics_storage_account_config",
JSON_EXTRACT(properties, '$.eventStoreServiceEnabled') as "event_store_service_enabled",
JSON_EXTRACT(properties, '$.fabricSettings') as "fabric_settings",
JSON_EXTRACT(properties, '$.managementEndpoint') as "management_endpoint",
JSON_EXTRACT(properties, '$.nodeTypes') as "node_types",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.reliabilityLevel') as "reliability_level",
JSON_EXTRACT(properties, '$.reverseProxyCertificate') as "reverse_proxy_certificate",
JSON_EXTRACT(properties, '$.reverseProxyCertificateCommonNames') as "reverse_proxy_certificate_common_names",
JSON_EXTRACT(properties, '$.upgradeDescription') as "upgrade_description",
JSON_EXTRACT(properties, '$.upgradeMode') as "upgrade_mode",
JSON_EXTRACT(properties, '$.applicationTypeVersionsCleanupPolicy') as "application_type_versions_cleanup_policy",
JSON_EXTRACT(properties, '$.vmImage') as "vm_image",
JSON_EXTRACT(properties, '$.sfZonalUpgradeMode') as "sf_zonal_upgrade_mode",
JSON_EXTRACT(properties, '$.vmssZonalUpgradeMode') as "vmss_zonal_upgrade_mode",
JSON_EXTRACT(properties, '$.infrastructureServiceManager') as "infrastructure_service_manager",
JSON_EXTRACT(properties, '$.upgradeWave') as "upgrade_wave",
JSON_EXTRACT(properties, '$.upgradePauseStartTimestampUtc') as "upgrade_pause_start_timestamp_utc",
JSON_EXTRACT(properties, '$.upgradePauseEndTimestampUtc') as "upgrade_pause_end_timestamp_utc",
JSON_EXTRACT(properties, '$.waveUpgradePaused') as "wave_upgrade_paused",
JSON_EXTRACT(properties, '$.notifications') as "notifications",
subscriptionId,
resourceGroupName,
clusterName
FROM azure.service_fabric.clusters
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
etag as etag,
systemData as system_data,
json_extract_path_text(properties, '$.addOnFeatures') as "add_on_features",
json_extract_path_text(properties, '$.availableClusterVersions') as "available_cluster_versions",
json_extract_path_text(properties, '$.azureActiveDirectory') as "azure_active_directory",
json_extract_path_text(properties, '$.certificate') as "certificate",
json_extract_path_text(properties, '$.certificateCommonNames') as "certificate_common_names",
json_extract_path_text(properties, '$.clientCertificateCommonNames') as "client_certificate_common_names",
json_extract_path_text(properties, '$.clientCertificateThumbprints') as "client_certificate_thumbprints",
json_extract_path_text(properties, '$.clusterCodeVersion') as "cluster_code_version",
json_extract_path_text(properties, '$.clusterEndpoint') as "cluster_endpoint",
json_extract_path_text(properties, '$.clusterId') as "cluster_id",
json_extract_path_text(properties, '$.clusterState') as "cluster_state",
json_extract_path_text(properties, '$.diagnosticsStorageAccountConfig') as "diagnostics_storage_account_config",
json_extract_path_text(properties, '$.eventStoreServiceEnabled') as "event_store_service_enabled",
json_extract_path_text(properties, '$.fabricSettings') as "fabric_settings",
json_extract_path_text(properties, '$.managementEndpoint') as "management_endpoint",
json_extract_path_text(properties, '$.nodeTypes') as "node_types",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.reliabilityLevel') as "reliability_level",
json_extract_path_text(properties, '$.reverseProxyCertificate') as "reverse_proxy_certificate",
json_extract_path_text(properties, '$.reverseProxyCertificateCommonNames') as "reverse_proxy_certificate_common_names",
json_extract_path_text(properties, '$.upgradeDescription') as "upgrade_description",
json_extract_path_text(properties, '$.upgradeMode') as "upgrade_mode",
json_extract_path_text(properties, '$.applicationTypeVersionsCleanupPolicy') as "application_type_versions_cleanup_policy",
json_extract_path_text(properties, '$.vmImage') as "vm_image",
json_extract_path_text(properties, '$.sfZonalUpgradeMode') as "sf_zonal_upgrade_mode",
json_extract_path_text(properties, '$.vmssZonalUpgradeMode') as "vmss_zonal_upgrade_mode",
json_extract_path_text(properties, '$.infrastructureServiceManager') as "infrastructure_service_manager",
json_extract_path_text(properties, '$.upgradeWave') as "upgrade_wave",
json_extract_path_text(properties, '$.upgradePauseStartTimestampUtc') as "upgrade_pause_start_timestamp_utc",
json_extract_path_text(properties, '$.upgradePauseEndTimestampUtc') as "upgrade_pause_end_timestamp_utc",
json_extract_path_text(properties, '$.waveUpgradePaused') as "wave_upgrade_paused",
json_extract_path_text(properties, '$.notifications') as "notifications",
subscriptionId,
resourceGroupName,
clusterName
FROM azure.service_fabric.clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
