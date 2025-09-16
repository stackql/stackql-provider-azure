--- 
title: vw_managed_clusters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_managed_clusters
  - aks
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

Creates, updates, deletes, gets or lists a <code>vw_managed_clusters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_managed_clusters</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.aks.vw_managed_clusters" /></td></tr>
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
extendedLocation as extended_location,
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.powerState') as "power_state",
JSON_EXTRACT(properties, '$.maxAgentPools') as "max_agent_pools",
JSON_EXTRACT(properties, '$.kubernetesVersion') as "kubernetes_version",
JSON_EXTRACT(properties, '$.currentKubernetesVersion') as "current_kubernetes_version",
JSON_EXTRACT(properties, '$.dnsPrefix') as "dns_prefix",
JSON_EXTRACT(properties, '$.fqdnSubdomain') as "fqdn_subdomain",
JSON_EXTRACT(properties, '$.fqdn') as "fqdn",
JSON_EXTRACT(properties, '$.privateFQDN') as "private_fqdn",
JSON_EXTRACT(properties, '$.azurePortalFQDN') as "azure_portal_fqdn",
JSON_EXTRACT(properties, '$.agentPoolProfiles') as "agent_pool_profiles",
JSON_EXTRACT(properties, '$.linuxProfile') as "linux_profile",
JSON_EXTRACT(properties, '$.windowsProfile') as "windows_profile",
JSON_EXTRACT(properties, '$.servicePrincipalProfile') as "service_principal_profile",
JSON_EXTRACT(properties, '$.addonProfiles') as "addon_profiles",
JSON_EXTRACT(properties, '$.podIdentityProfile') as "pod_identity_profile",
JSON_EXTRACT(properties, '$.oidcIssuerProfile') as "oidc_issuer_profile",
JSON_EXTRACT(properties, '$.nodeResourceGroup') as "node_resource_group",
JSON_EXTRACT(properties, '$.enableRBAC') as "enable_rbac",
JSON_EXTRACT(properties, '$.supportPlan') as "support_plan",
JSON_EXTRACT(properties, '$.enablePodSecurityPolicy') as "enable_pod_security_policy",
JSON_EXTRACT(properties, '$.networkProfile') as "network_profile",
JSON_EXTRACT(properties, '$.aadProfile') as "aad_profile",
JSON_EXTRACT(properties, '$.autoUpgradeProfile') as "auto_upgrade_profile",
JSON_EXTRACT(properties, '$.upgradeSettings') as "upgrade_settings",
JSON_EXTRACT(properties, '$.autoScalerProfile') as "auto_scaler_profile",
JSON_EXTRACT(properties, '$.apiServerAccessProfile') as "api_server_access_profile",
JSON_EXTRACT(properties, '$.diskEncryptionSetID') as "disk_encryption_set_id",
JSON_EXTRACT(properties, '$.identityProfile') as "identity_profile",
JSON_EXTRACT(properties, '$.privateLinkResources') as "private_link_resources",
JSON_EXTRACT(properties, '$.disableLocalAccounts') as "disable_local_accounts",
JSON_EXTRACT(properties, '$.httpProxyConfig') as "http_proxy_config",
JSON_EXTRACT(properties, '$.securityProfile') as "security_profile",
JSON_EXTRACT(properties, '$.storageProfile') as "storage_profile",
JSON_EXTRACT(properties, '$.ingressProfile') as "ingress_profile",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.workloadAutoScalerProfile') as "workload_auto_scaler_profile",
JSON_EXTRACT(properties, '$.azureMonitorProfile') as "azure_monitor_profile",
JSON_EXTRACT(properties, '$.serviceMeshProfile') as "service_mesh_profile",
JSON_EXTRACT(properties, '$.resourceUID') as "resource_uid",
JSON_EXTRACT(properties, '$.metricsProfile') as "metrics_profile",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.aks.managed_clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
sku as sku,
extendedLocation as extended_location,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.powerState') as "power_state",
json_extract_path_text(properties, '$.maxAgentPools') as "max_agent_pools",
json_extract_path_text(properties, '$.kubernetesVersion') as "kubernetes_version",
json_extract_path_text(properties, '$.currentKubernetesVersion') as "current_kubernetes_version",
json_extract_path_text(properties, '$.dnsPrefix') as "dns_prefix",
json_extract_path_text(properties, '$.fqdnSubdomain') as "fqdn_subdomain",
json_extract_path_text(properties, '$.fqdn') as "fqdn",
json_extract_path_text(properties, '$.privateFQDN') as "private_fqdn",
json_extract_path_text(properties, '$.azurePortalFQDN') as "azure_portal_fqdn",
json_extract_path_text(properties, '$.agentPoolProfiles') as "agent_pool_profiles",
json_extract_path_text(properties, '$.linuxProfile') as "linux_profile",
json_extract_path_text(properties, '$.windowsProfile') as "windows_profile",
json_extract_path_text(properties, '$.servicePrincipalProfile') as "service_principal_profile",
json_extract_path_text(properties, '$.addonProfiles') as "addon_profiles",
json_extract_path_text(properties, '$.podIdentityProfile') as "pod_identity_profile",
json_extract_path_text(properties, '$.oidcIssuerProfile') as "oidc_issuer_profile",
json_extract_path_text(properties, '$.nodeResourceGroup') as "node_resource_group",
json_extract_path_text(properties, '$.enableRBAC') as "enable_rbac",
json_extract_path_text(properties, '$.supportPlan') as "support_plan",
json_extract_path_text(properties, '$.enablePodSecurityPolicy') as "enable_pod_security_policy",
json_extract_path_text(properties, '$.networkProfile') as "network_profile",
json_extract_path_text(properties, '$.aadProfile') as "aad_profile",
json_extract_path_text(properties, '$.autoUpgradeProfile') as "auto_upgrade_profile",
json_extract_path_text(properties, '$.upgradeSettings') as "upgrade_settings",
json_extract_path_text(properties, '$.autoScalerProfile') as "auto_scaler_profile",
json_extract_path_text(properties, '$.apiServerAccessProfile') as "api_server_access_profile",
json_extract_path_text(properties, '$.diskEncryptionSetID') as "disk_encryption_set_id",
json_extract_path_text(properties, '$.identityProfile') as "identity_profile",
json_extract_path_text(properties, '$.privateLinkResources') as "private_link_resources",
json_extract_path_text(properties, '$.disableLocalAccounts') as "disable_local_accounts",
json_extract_path_text(properties, '$.httpProxyConfig') as "http_proxy_config",
json_extract_path_text(properties, '$.securityProfile') as "security_profile",
json_extract_path_text(properties, '$.storageProfile') as "storage_profile",
json_extract_path_text(properties, '$.ingressProfile') as "ingress_profile",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.workloadAutoScalerProfile') as "workload_auto_scaler_profile",
json_extract_path_text(properties, '$.azureMonitorProfile') as "azure_monitor_profile",
json_extract_path_text(properties, '$.serviceMeshProfile') as "service_mesh_profile",
json_extract_path_text(properties, '$.resourceUID') as "resource_uid",
json_extract_path_text(properties, '$.metricsProfile') as "metrics_profile",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.aks.managed_clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
