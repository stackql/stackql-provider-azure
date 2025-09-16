--- 
title: vw_application_gateways
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_application_gateways
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_application_gateways</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_application_gateways</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_application_gateways" /></td></tr>
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
etag as etag,
zones as zones,
identity as identity,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.sslPolicy') as "ssl_policy",
JSON_EXTRACT(properties, '$.operationalState') as "operational_state",
JSON_EXTRACT(properties, '$.gatewayIPConfigurations') as "gateway_ip_configurations",
JSON_EXTRACT(properties, '$.authenticationCertificates') as "authentication_certificates",
JSON_EXTRACT(properties, '$.trustedRootCertificates') as "trusted_root_certificates",
JSON_EXTRACT(properties, '$.trustedClientCertificates') as "trusted_client_certificates",
JSON_EXTRACT(properties, '$.sslCertificates') as "ssl_certificates",
JSON_EXTRACT(properties, '$.frontendIPConfigurations') as "frontend_ip_configurations",
JSON_EXTRACT(properties, '$.frontendPorts') as "frontend_ports",
JSON_EXTRACT(properties, '$.probes') as "probes",
JSON_EXTRACT(properties, '$.backendAddressPools') as "backend_address_pools",
JSON_EXTRACT(properties, '$.backendHttpSettingsCollection') as "backend_http_settings_collection",
JSON_EXTRACT(properties, '$.backendSettingsCollection') as "backend_settings_collection",
JSON_EXTRACT(properties, '$.httpListeners') as "http_listeners",
JSON_EXTRACT(properties, '$.listeners') as "listeners",
JSON_EXTRACT(properties, '$.sslProfiles') as "ssl_profiles",
JSON_EXTRACT(properties, '$.urlPathMaps') as "url_path_maps",
JSON_EXTRACT(properties, '$.requestRoutingRules') as "request_routing_rules",
JSON_EXTRACT(properties, '$.routingRules') as "routing_rules",
JSON_EXTRACT(properties, '$.rewriteRuleSets') as "rewrite_rule_sets",
JSON_EXTRACT(properties, '$.redirectConfigurations') as "redirect_configurations",
JSON_EXTRACT(properties, '$.webApplicationFirewallConfiguration') as "web_application_firewall_configuration",
JSON_EXTRACT(properties, '$.firewallPolicy') as "firewall_policy",
JSON_EXTRACT(properties, '$.enableHttp2') as "enable_http2",
JSON_EXTRACT(properties, '$.enableFips') as "enable_fips",
JSON_EXTRACT(properties, '$.autoscaleConfiguration') as "autoscale_configuration",
JSON_EXTRACT(properties, '$.privateLinkConfigurations') as "private_link_configurations",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.customErrorConfigurations') as "custom_error_configurations",
JSON_EXTRACT(properties, '$.forceFirewallPolicyAssociation') as "force_firewall_policy_association",
JSON_EXTRACT(properties, '$.loadDistributionPolicies') as "load_distribution_policies",
JSON_EXTRACT(properties, '$.globalConfiguration') as "global_configuration",
JSON_EXTRACT(properties, '$.defaultPredefinedSslPolicy') as "default_predefined_ssl_policy",
subscriptionId,
resourceGroupName,
applicationGatewayName
FROM azure.network.application_gateways
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
zones as zones,
identity as identity,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.sslPolicy') as "ssl_policy",
json_extract_path_text(properties, '$.operationalState') as "operational_state",
json_extract_path_text(properties, '$.gatewayIPConfigurations') as "gateway_ip_configurations",
json_extract_path_text(properties, '$.authenticationCertificates') as "authentication_certificates",
json_extract_path_text(properties, '$.trustedRootCertificates') as "trusted_root_certificates",
json_extract_path_text(properties, '$.trustedClientCertificates') as "trusted_client_certificates",
json_extract_path_text(properties, '$.sslCertificates') as "ssl_certificates",
json_extract_path_text(properties, '$.frontendIPConfigurations') as "frontend_ip_configurations",
json_extract_path_text(properties, '$.frontendPorts') as "frontend_ports",
json_extract_path_text(properties, '$.probes') as "probes",
json_extract_path_text(properties, '$.backendAddressPools') as "backend_address_pools",
json_extract_path_text(properties, '$.backendHttpSettingsCollection') as "backend_http_settings_collection",
json_extract_path_text(properties, '$.backendSettingsCollection') as "backend_settings_collection",
json_extract_path_text(properties, '$.httpListeners') as "http_listeners",
json_extract_path_text(properties, '$.listeners') as "listeners",
json_extract_path_text(properties, '$.sslProfiles') as "ssl_profiles",
json_extract_path_text(properties, '$.urlPathMaps') as "url_path_maps",
json_extract_path_text(properties, '$.requestRoutingRules') as "request_routing_rules",
json_extract_path_text(properties, '$.routingRules') as "routing_rules",
json_extract_path_text(properties, '$.rewriteRuleSets') as "rewrite_rule_sets",
json_extract_path_text(properties, '$.redirectConfigurations') as "redirect_configurations",
json_extract_path_text(properties, '$.webApplicationFirewallConfiguration') as "web_application_firewall_configuration",
json_extract_path_text(properties, '$.firewallPolicy') as "firewall_policy",
json_extract_path_text(properties, '$.enableHttp2') as "enable_http2",
json_extract_path_text(properties, '$.enableFips') as "enable_fips",
json_extract_path_text(properties, '$.autoscaleConfiguration') as "autoscale_configuration",
json_extract_path_text(properties, '$.privateLinkConfigurations') as "private_link_configurations",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.customErrorConfigurations') as "custom_error_configurations",
json_extract_path_text(properties, '$.forceFirewallPolicyAssociation') as "force_firewall_policy_association",
json_extract_path_text(properties, '$.loadDistributionPolicies') as "load_distribution_policies",
json_extract_path_text(properties, '$.globalConfiguration') as "global_configuration",
json_extract_path_text(properties, '$.defaultPredefinedSslPolicy') as "default_predefined_ssl_policy",
subscriptionId,
resourceGroupName,
applicationGatewayName
FROM azure.network.application_gateways
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
