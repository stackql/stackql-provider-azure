--- 
title: vw_signalrs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_signalrs
  - signalr
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

Creates, updates, deletes, gets or lists a <code>vw_signalrs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_signalrs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.signalr.vw_signalrs" /></td></tr>
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
sku as sku,
kind as kind,
identity as identity,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.externalIP') as "external_ip",
JSON_EXTRACT(properties, '$.hostName') as "host_name",
JSON_EXTRACT(properties, '$.publicPort') as "public_port",
JSON_EXTRACT(properties, '$.serverPort') as "server_port",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.sharedPrivateLinkResources') as "shared_private_link_resources",
JSON_EXTRACT(properties, '$.tls') as "tls",
JSON_EXTRACT(properties, '$.hostNamePrefix') as "host_name_prefix",
JSON_EXTRACT(properties, '$.features') as "features",
JSON_EXTRACT(properties, '$.liveTraceConfiguration') as "live_trace_configuration",
JSON_EXTRACT(properties, '$.resourceLogConfiguration') as "resource_log_configuration",
JSON_EXTRACT(properties, '$.cors') as "cors",
JSON_EXTRACT(properties, '$.serverless') as "serverless",
JSON_EXTRACT(properties, '$.upstream') as "upstream",
JSON_EXTRACT(properties, '$.networkACLs') as "network_ac_ls",
JSON_EXTRACT(properties, '$.applicationFirewall') as "application_firewall",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.disableLocalAuth') as "disable_local_auth",
JSON_EXTRACT(properties, '$.disableAadAuth') as "disable_aad_auth",
JSON_EXTRACT(properties, '$.regionEndpointEnabled') as "region_endpoint_enabled",
JSON_EXTRACT(properties, '$.resourceStopped') as "resource_stopped",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.signalr.signalrs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
sku as sku,
kind as kind,
identity as identity,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.externalIP') as "external_ip",
json_extract_path_text(properties, '$.hostName') as "host_name",
json_extract_path_text(properties, '$.publicPort') as "public_port",
json_extract_path_text(properties, '$.serverPort') as "server_port",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.sharedPrivateLinkResources') as "shared_private_link_resources",
json_extract_path_text(properties, '$.tls') as "tls",
json_extract_path_text(properties, '$.hostNamePrefix') as "host_name_prefix",
json_extract_path_text(properties, '$.features') as "features",
json_extract_path_text(properties, '$.liveTraceConfiguration') as "live_trace_configuration",
json_extract_path_text(properties, '$.resourceLogConfiguration') as "resource_log_configuration",
json_extract_path_text(properties, '$.cors') as "cors",
json_extract_path_text(properties, '$.serverless') as "serverless",
json_extract_path_text(properties, '$.upstream') as "upstream",
json_extract_path_text(properties, '$.networkACLs') as "network_ac_ls",
json_extract_path_text(properties, '$.applicationFirewall') as "application_firewall",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.disableLocalAuth') as "disable_local_auth",
json_extract_path_text(properties, '$.disableAadAuth') as "disable_aad_auth",
json_extract_path_text(properties, '$.regionEndpointEnabled') as "region_endpoint_enabled",
json_extract_path_text(properties, '$.resourceStopped') as "resource_stopped",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.signalr.signalrs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
