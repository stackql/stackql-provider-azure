--- 
title: vw_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_services
  - api_management
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

Creates, updates, deletes, gets or lists a <code>vw_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.vw_services" /></td></tr>
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
sku as sku,
identity as identity,
systemData as system_data,
etag as etag,
zones as zones,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.publisherEmail') as "publisher_email",
JSON_EXTRACT(properties, '$.publisherName') as "publisher_name",
JSON_EXTRACT(properties, '$.notificationSenderEmail') as "notification_sender_email",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.targetProvisioningState') as "target_provisioning_state",
JSON_EXTRACT(properties, '$.createdAtUtc') as "created_at_utc",
JSON_EXTRACT(properties, '$.gatewayUrl') as "gateway_url",
JSON_EXTRACT(properties, '$.gatewayRegionalUrl') as "gateway_regional_url",
JSON_EXTRACT(properties, '$.portalUrl') as "portal_url",
JSON_EXTRACT(properties, '$.managementApiUrl') as "management_api_url",
JSON_EXTRACT(properties, '$.scmUrl') as "scm_url",
JSON_EXTRACT(properties, '$.developerPortalUrl') as "developer_portal_url",
JSON_EXTRACT(properties, '$.hostnameConfigurations') as "hostname_configurations",
JSON_EXTRACT(properties, '$.publicIPAddresses') as "public_ip_addresses",
JSON_EXTRACT(properties, '$.privateIPAddresses') as "private_ip_addresses",
JSON_EXTRACT(properties, '$.publicIpAddressId') as "public_ip_address_id",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.configurationApi') as "configuration_api",
JSON_EXTRACT(properties, '$.virtualNetworkConfiguration') as "virtual_network_configuration",
JSON_EXTRACT(properties, '$.additionalLocations') as "additional_locations",
JSON_EXTRACT(properties, '$.customProperties') as "custom_properties",
JSON_EXTRACT(properties, '$.certificates') as "certificates",
JSON_EXTRACT(properties, '$.enableClientCertificate') as "enable_client_certificate",
JSON_EXTRACT(properties, '$.natGatewayState') as "nat_gateway_state",
JSON_EXTRACT(properties, '$.outboundPublicIPAddresses') as "outbound_public_ip_addresses",
JSON_EXTRACT(properties, '$.disableGateway') as "disable_gateway",
JSON_EXTRACT(properties, '$.virtualNetworkType') as "virtual_network_type",
JSON_EXTRACT(properties, '$.apiVersionConstraint') as "api_version_constraint",
JSON_EXTRACT(properties, '$.restore') as "restore",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.platformVersion') as "platform_version",
JSON_EXTRACT(properties, '$.legacyPortalStatus') as "legacy_portal_status",
JSON_EXTRACT(properties, '$.developerPortalStatus') as "developer_portal_status",
subscriptionId,
resourceGroupName,
serviceName
FROM azure.api_management.services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
sku as sku,
identity as identity,
systemData as system_data,
etag as etag,
zones as zones,
type as type,
tags as tags,
json_extract_path_text(properties, '$.publisherEmail') as "publisher_email",
json_extract_path_text(properties, '$.publisherName') as "publisher_name",
json_extract_path_text(properties, '$.notificationSenderEmail') as "notification_sender_email",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.targetProvisioningState') as "target_provisioning_state",
json_extract_path_text(properties, '$.createdAtUtc') as "created_at_utc",
json_extract_path_text(properties, '$.gatewayUrl') as "gateway_url",
json_extract_path_text(properties, '$.gatewayRegionalUrl') as "gateway_regional_url",
json_extract_path_text(properties, '$.portalUrl') as "portal_url",
json_extract_path_text(properties, '$.managementApiUrl') as "management_api_url",
json_extract_path_text(properties, '$.scmUrl') as "scm_url",
json_extract_path_text(properties, '$.developerPortalUrl') as "developer_portal_url",
json_extract_path_text(properties, '$.hostnameConfigurations') as "hostname_configurations",
json_extract_path_text(properties, '$.publicIPAddresses') as "public_ip_addresses",
json_extract_path_text(properties, '$.privateIPAddresses') as "private_ip_addresses",
json_extract_path_text(properties, '$.publicIpAddressId') as "public_ip_address_id",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.configurationApi') as "configuration_api",
json_extract_path_text(properties, '$.virtualNetworkConfiguration') as "virtual_network_configuration",
json_extract_path_text(properties, '$.additionalLocations') as "additional_locations",
json_extract_path_text(properties, '$.customProperties') as "custom_properties",
json_extract_path_text(properties, '$.certificates') as "certificates",
json_extract_path_text(properties, '$.enableClientCertificate') as "enable_client_certificate",
json_extract_path_text(properties, '$.natGatewayState') as "nat_gateway_state",
json_extract_path_text(properties, '$.outboundPublicIPAddresses') as "outbound_public_ip_addresses",
json_extract_path_text(properties, '$.disableGateway') as "disable_gateway",
json_extract_path_text(properties, '$.virtualNetworkType') as "virtual_network_type",
json_extract_path_text(properties, '$.apiVersionConstraint') as "api_version_constraint",
json_extract_path_text(properties, '$.restore') as "restore",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.platformVersion') as "platform_version",
json_extract_path_text(properties, '$.legacyPortalStatus') as "legacy_portal_status",
json_extract_path_text(properties, '$.developerPortalStatus') as "developer_portal_status",
subscriptionId,
resourceGroupName,
serviceName
FROM azure.api_management.services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
