--- 
title: vw_resources
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_resources
  - iot_hub
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

Creates, updates, deletes, gets or lists a <code>vw_resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_resources</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_hub.vw_resources" /></td></tr>
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
etag as etag,
sku as sku,
identity as identity,
systemData as system_data,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.authorizationPolicies') as "authorization_policies",
JSON_EXTRACT(properties, '$.disableLocalAuth') as "disable_local_auth",
JSON_EXTRACT(properties, '$.disableDeviceSAS') as "disable_device_sas",
JSON_EXTRACT(properties, '$.disableModuleSAS') as "disable_module_sas",
JSON_EXTRACT(properties, '$.restrictOutboundNetworkAccess') as "restrict_outbound_network_access",
JSON_EXTRACT(properties, '$.allowedFqdnList') as "allowed_fqdn_list",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.ipFilterRules') as "ip_filter_rules",
JSON_EXTRACT(properties, '$.networkRuleSets') as "network_rule_sets",
JSON_EXTRACT(properties, '$.minTlsVersion') as "min_tls_version",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.hostName') as "host_name",
JSON_EXTRACT(properties, '$.eventHubEndpoints') as "event_hub_endpoints",
JSON_EXTRACT(properties, '$.routing') as "routing",
JSON_EXTRACT(properties, '$.storageEndpoints') as "storage_endpoints",
JSON_EXTRACT(properties, '$.messagingEndpoints') as "messaging_endpoints",
JSON_EXTRACT(properties, '$.enableFileUploadNotifications') as "enable_file_upload_notifications",
JSON_EXTRACT(properties, '$.cloudToDevice') as "cloud_to_device",
JSON_EXTRACT(properties, '$.comments') as "comments",
JSON_EXTRACT(properties, '$.features') as "features",
JSON_EXTRACT(properties, '$.locations') as "locations",
JSON_EXTRACT(properties, '$.enableDataResidency') as "enable_data_residency",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.iot_hub.resources
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
etag as etag,
sku as sku,
identity as identity,
systemData as system_data,
type as type,
tags as tags,
json_extract_path_text(properties, '$.authorizationPolicies') as "authorization_policies",
json_extract_path_text(properties, '$.disableLocalAuth') as "disable_local_auth",
json_extract_path_text(properties, '$.disableDeviceSAS') as "disable_device_sas",
json_extract_path_text(properties, '$.disableModuleSAS') as "disable_module_sas",
json_extract_path_text(properties, '$.restrictOutboundNetworkAccess') as "restrict_outbound_network_access",
json_extract_path_text(properties, '$.allowedFqdnList') as "allowed_fqdn_list",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.ipFilterRules') as "ip_filter_rules",
json_extract_path_text(properties, '$.networkRuleSets') as "network_rule_sets",
json_extract_path_text(properties, '$.minTlsVersion') as "min_tls_version",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.hostName') as "host_name",
json_extract_path_text(properties, '$.eventHubEndpoints') as "event_hub_endpoints",
json_extract_path_text(properties, '$.routing') as "routing",
json_extract_path_text(properties, '$.storageEndpoints') as "storage_endpoints",
json_extract_path_text(properties, '$.messagingEndpoints') as "messaging_endpoints",
json_extract_path_text(properties, '$.enableFileUploadNotifications') as "enable_file_upload_notifications",
json_extract_path_text(properties, '$.cloudToDevice') as "cloud_to_device",
json_extract_path_text(properties, '$.comments') as "comments",
json_extract_path_text(properties, '$.features') as "features",
json_extract_path_text(properties, '$.locations') as "locations",
json_extract_path_text(properties, '$.enableDataResidency') as "enable_data_residency",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.iot_hub.resources
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
