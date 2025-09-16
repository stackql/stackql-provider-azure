--- 
title: vw_connected_clusters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_connected_clusters
  - hybrid_kubernetes
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

Creates, updates, deletes, gets or lists a <code>vw_connected_clusters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_connected_clusters</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_kubernetes.vw_connected_clusters" /></td></tr>
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
identity as identity,
kind as kind,
systemData as system_data,
tags as tags,
JSON_EXTRACT(properties, '$.agentPublicKeyCertificate') as "agent_public_key_certificate",
JSON_EXTRACT(properties, '$.kubernetesVersion') as "kubernetes_version",
JSON_EXTRACT(properties, '$.totalNodeCount') as "total_node_count",
JSON_EXTRACT(properties, '$.totalCoreCount') as "total_core_count",
JSON_EXTRACT(properties, '$.agentVersion') as "agent_version",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.distribution') as "distribution",
JSON_EXTRACT(properties, '$.distributionVersion') as "distribution_version",
JSON_EXTRACT(properties, '$.infrastructure') as "infrastructure",
JSON_EXTRACT(properties, '$.offering') as "offering",
JSON_EXTRACT(properties, '$.managedIdentityCertificateExpirationTime') as "managed_identity_certificate_expiration_time",
JSON_EXTRACT(properties, '$.lastConnectivityTime') as "last_connectivity_time",
JSON_EXTRACT(properties, '$.connectivityStatus') as "connectivity_status",
JSON_EXTRACT(properties, '$.privateLinkState') as "private_link_state",
JSON_EXTRACT(properties, '$.privateLinkScopeResourceId') as "private_link_scope_resource_id",
JSON_EXTRACT(properties, '$.azureHybridBenefit') as "azure_hybrid_benefit",
JSON_EXTRACT(properties, '$.aadProfile') as "aad_profile",
JSON_EXTRACT(properties, '$.arcAgentProfile') as "arc_agent_profile",
JSON_EXTRACT(properties, '$.securityProfile') as "security_profile",
JSON_EXTRACT(properties, '$.oidcIssuerProfile') as "oidc_issuer_profile",
JSON_EXTRACT(properties, '$.gateway') as "gateway",
JSON_EXTRACT(properties, '$.arcAgentryConfigurations') as "arc_agentry_configurations",
JSON_EXTRACT(properties, '$.miscellaneousProperties') as "miscellaneous_properties",
subscriptionId,
resourceGroupName,
clusterName
FROM azure.hybrid_kubernetes.connected_clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
kind as kind,
systemData as system_data,
tags as tags,
json_extract_path_text(properties, '$.agentPublicKeyCertificate') as "agent_public_key_certificate",
json_extract_path_text(properties, '$.kubernetesVersion') as "kubernetes_version",
json_extract_path_text(properties, '$.totalNodeCount') as "total_node_count",
json_extract_path_text(properties, '$.totalCoreCount') as "total_core_count",
json_extract_path_text(properties, '$.agentVersion') as "agent_version",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.distribution') as "distribution",
json_extract_path_text(properties, '$.distributionVersion') as "distribution_version",
json_extract_path_text(properties, '$.infrastructure') as "infrastructure",
json_extract_path_text(properties, '$.offering') as "offering",
json_extract_path_text(properties, '$.managedIdentityCertificateExpirationTime') as "managed_identity_certificate_expiration_time",
json_extract_path_text(properties, '$.lastConnectivityTime') as "last_connectivity_time",
json_extract_path_text(properties, '$.connectivityStatus') as "connectivity_status",
json_extract_path_text(properties, '$.privateLinkState') as "private_link_state",
json_extract_path_text(properties, '$.privateLinkScopeResourceId') as "private_link_scope_resource_id",
json_extract_path_text(properties, '$.azureHybridBenefit') as "azure_hybrid_benefit",
json_extract_path_text(properties, '$.aadProfile') as "aad_profile",
json_extract_path_text(properties, '$.arcAgentProfile') as "arc_agent_profile",
json_extract_path_text(properties, '$.securityProfile') as "security_profile",
json_extract_path_text(properties, '$.oidcIssuerProfile') as "oidc_issuer_profile",
json_extract_path_text(properties, '$.gateway') as "gateway",
json_extract_path_text(properties, '$.arcAgentryConfigurations') as "arc_agentry_configurations",
json_extract_path_text(properties, '$.miscellaneousProperties') as "miscellaneous_properties",
subscriptionId,
resourceGroupName,
clusterName
FROM azure.hybrid_kubernetes.connected_clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
