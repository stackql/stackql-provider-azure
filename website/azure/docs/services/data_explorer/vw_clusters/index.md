--- 
title: vw_clusters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_clusters
  - data_explorer
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_explorer.vw_clusters" /></td></tr>
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
sku as sku,
systemData as system_data,
zones as zones,
identity as identity,
etag as etag,
tags as tags,
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.uri') as "uri",
JSON_EXTRACT(properties, '$.dataIngestionUri') as "data_ingestion_uri",
JSON_EXTRACT(properties, '$.stateReason') as "state_reason",
JSON_EXTRACT(properties, '$.trustedExternalTenants') as "trusted_external_tenants",
JSON_EXTRACT(properties, '$.optimizedAutoscale') as "optimized_autoscale",
JSON_EXTRACT(properties, '$.enableDiskEncryption') as "enable_disk_encryption",
JSON_EXTRACT(properties, '$.enableStreamingIngest') as "enable_streaming_ingest",
JSON_EXTRACT(properties, '$.virtualNetworkConfiguration') as "virtual_network_configuration",
JSON_EXTRACT(properties, '$.keyVaultProperties') as "key_vault_properties",
JSON_EXTRACT(properties, '$.enablePurge') as "enable_purge",
JSON_EXTRACT(properties, '$.languageExtensions') as "language_extensions",
JSON_EXTRACT(properties, '$.enableDoubleEncryption') as "enable_double_encryption",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.allowedIpRangeList') as "allowed_ip_range_list",
JSON_EXTRACT(properties, '$.engineType') as "engine_type",
JSON_EXTRACT(properties, '$.acceptedAudiences') as "accepted_audiences",
JSON_EXTRACT(properties, '$.enableAutoStop') as "enable_auto_stop",
JSON_EXTRACT(properties, '$.restrictOutboundNetworkAccess') as "restrict_outbound_network_access",
JSON_EXTRACT(properties, '$.allowedFqdnList') as "allowed_fqdn_list",
JSON_EXTRACT(properties, '$.publicIPType') as "public_ip_type",
JSON_EXTRACT(properties, '$.virtualClusterGraduationProperties') as "virtual_cluster_graduation_properties",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.migrationCluster') as "migration_cluster",
subscriptionId,
resourceGroupName,
clusterName
FROM azure.data_explorer.clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
sku as sku,
systemData as system_data,
zones as zones,
identity as identity,
etag as etag,
tags as tags,
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.uri') as "uri",
json_extract_path_text(properties, '$.dataIngestionUri') as "data_ingestion_uri",
json_extract_path_text(properties, '$.stateReason') as "state_reason",
json_extract_path_text(properties, '$.trustedExternalTenants') as "trusted_external_tenants",
json_extract_path_text(properties, '$.optimizedAutoscale') as "optimized_autoscale",
json_extract_path_text(properties, '$.enableDiskEncryption') as "enable_disk_encryption",
json_extract_path_text(properties, '$.enableStreamingIngest') as "enable_streaming_ingest",
json_extract_path_text(properties, '$.virtualNetworkConfiguration') as "virtual_network_configuration",
json_extract_path_text(properties, '$.keyVaultProperties') as "key_vault_properties",
json_extract_path_text(properties, '$.enablePurge') as "enable_purge",
json_extract_path_text(properties, '$.languageExtensions') as "language_extensions",
json_extract_path_text(properties, '$.enableDoubleEncryption') as "enable_double_encryption",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.allowedIpRangeList') as "allowed_ip_range_list",
json_extract_path_text(properties, '$.engineType') as "engine_type",
json_extract_path_text(properties, '$.acceptedAudiences') as "accepted_audiences",
json_extract_path_text(properties, '$.enableAutoStop') as "enable_auto_stop",
json_extract_path_text(properties, '$.restrictOutboundNetworkAccess') as "restrict_outbound_network_access",
json_extract_path_text(properties, '$.allowedFqdnList') as "allowed_fqdn_list",
json_extract_path_text(properties, '$.publicIPType') as "public_ip_type",
json_extract_path_text(properties, '$.virtualClusterGraduationProperties') as "virtual_cluster_graduation_properties",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.migrationCluster') as "migration_cluster",
subscriptionId,
resourceGroupName,
clusterName
FROM azure.data_explorer.clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
