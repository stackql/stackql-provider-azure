--- 
title: vw_clusters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_clusters
  - hdinsight
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hdinsight.vw_clusters" /></td></tr>
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
etag as etag,
zones as zones,
identity as identity,
systemData as system_data,
JSON_EXTRACT(properties, '$.clusterVersion') as "cluster_version",
JSON_EXTRACT(properties, '$.clusterHdpVersion') as "cluster_hdp_version",
JSON_EXTRACT(properties, '$.osType') as "os_type",
JSON_EXTRACT(properties, '$.tier') as "tier",
JSON_EXTRACT(properties, '$.clusterId') as "cluster_id",
JSON_EXTRACT(properties, '$.clusterDefinition') as "cluster_definition",
JSON_EXTRACT(properties, '$.kafkaRestProperties') as "kafka_rest_properties",
JSON_EXTRACT(properties, '$.securityProfile') as "security_profile",
JSON_EXTRACT(properties, '$.computeProfile') as "compute_profile",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.clusterState') as "cluster_state",
JSON_EXTRACT(properties, '$.quotaInfo') as "quota_info",
JSON_EXTRACT(properties, '$.errors') as "errors",
JSON_EXTRACT(properties, '$.connectivityEndpoints') as "connectivity_endpoints",
JSON_EXTRACT(properties, '$.diskEncryptionProperties') as "disk_encryption_properties",
JSON_EXTRACT(properties, '$.encryptionInTransitProperties') as "encryption_in_transit_properties",
JSON_EXTRACT(properties, '$.storageProfile') as "storage_profile",
JSON_EXTRACT(properties, '$.minSupportedTlsVersion') as "min_supported_tls_version",
JSON_EXTRACT(properties, '$.excludedServicesConfig') as "excluded_services_config",
JSON_EXTRACT(properties, '$.networkProperties') as "network_properties",
JSON_EXTRACT(properties, '$.computeIsolationProperties') as "compute_isolation_properties",
JSON_EXTRACT(properties, '$.privateLinkConfigurations') as "private_link_configurations",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
subscriptionId,
resourceGroupName,
clusterName
FROM azure.hdinsight.clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
etag as etag,
zones as zones,
identity as identity,
systemData as system_data,
json_extract_path_text(properties, '$.clusterVersion') as "cluster_version",
json_extract_path_text(properties, '$.clusterHdpVersion') as "cluster_hdp_version",
json_extract_path_text(properties, '$.osType') as "os_type",
json_extract_path_text(properties, '$.tier') as "tier",
json_extract_path_text(properties, '$.clusterId') as "cluster_id",
json_extract_path_text(properties, '$.clusterDefinition') as "cluster_definition",
json_extract_path_text(properties, '$.kafkaRestProperties') as "kafka_rest_properties",
json_extract_path_text(properties, '$.securityProfile') as "security_profile",
json_extract_path_text(properties, '$.computeProfile') as "compute_profile",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.clusterState') as "cluster_state",
json_extract_path_text(properties, '$.quotaInfo') as "quota_info",
json_extract_path_text(properties, '$.errors') as "errors",
json_extract_path_text(properties, '$.connectivityEndpoints') as "connectivity_endpoints",
json_extract_path_text(properties, '$.diskEncryptionProperties') as "disk_encryption_properties",
json_extract_path_text(properties, '$.encryptionInTransitProperties') as "encryption_in_transit_properties",
json_extract_path_text(properties, '$.storageProfile') as "storage_profile",
json_extract_path_text(properties, '$.minSupportedTlsVersion') as "min_supported_tls_version",
json_extract_path_text(properties, '$.excludedServicesConfig') as "excluded_services_config",
json_extract_path_text(properties, '$.networkProperties') as "network_properties",
json_extract_path_text(properties, '$.computeIsolationProperties') as "compute_isolation_properties",
json_extract_path_text(properties, '$.privateLinkConfigurations') as "private_link_configurations",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
subscriptionId,
resourceGroupName,
clusterName
FROM azure.hdinsight.clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
