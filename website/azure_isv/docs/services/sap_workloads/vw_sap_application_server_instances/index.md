--- 
title: vw_sap_application_server_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sap_application_server_instances
  - sap_workloads
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_sap_application_server_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sap_application_server_instances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.sap_workloads.vw_sap_application_server_instances" /></td></tr>
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
JSON_EXTRACT(properties, '$.instanceNo') as "instance_no",
JSON_EXTRACT(properties, '$.subnet') as "subnet",
JSON_EXTRACT(properties, '$.hostname') as "hostname",
JSON_EXTRACT(properties, '$.kernelVersion') as "kernel_version",
JSON_EXTRACT(properties, '$.kernelPatch') as "kernel_patch",
JSON_EXTRACT(properties, '$.ipAddress') as "ip_address",
JSON_EXTRACT(properties, '$.gatewayPort') as "gateway_port",
JSON_EXTRACT(properties, '$.icmHttpPort') as "icm_http_port",
JSON_EXTRACT(properties, '$.icmHttpsPort') as "icm_https_port",
JSON_EXTRACT(properties, '$.loadBalancerDetails') as "load_balancer_details",
JSON_EXTRACT(properties, '$.vmDetails') as "vm_details",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.health') as "health",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.errors') as "errors",
subscriptionId,
resourceGroupName,
sapVirtualInstanceName,
applicationInstanceName
FROM azure_isv.sap_workloads.sap_application_server_instances
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND sapVirtualInstanceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.instanceNo') as "instance_no",
json_extract_path_text(properties, '$.subnet') as "subnet",
json_extract_path_text(properties, '$.hostname') as "hostname",
json_extract_path_text(properties, '$.kernelVersion') as "kernel_version",
json_extract_path_text(properties, '$.kernelPatch') as "kernel_patch",
json_extract_path_text(properties, '$.ipAddress') as "ip_address",
json_extract_path_text(properties, '$.gatewayPort') as "gateway_port",
json_extract_path_text(properties, '$.icmHttpPort') as "icm_http_port",
json_extract_path_text(properties, '$.icmHttpsPort') as "icm_https_port",
json_extract_path_text(properties, '$.loadBalancerDetails') as "load_balancer_details",
json_extract_path_text(properties, '$.vmDetails') as "vm_details",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.health') as "health",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.errors') as "errors",
subscriptionId,
resourceGroupName,
sapVirtualInstanceName,
applicationInstanceName
FROM azure_isv.sap_workloads.sap_application_server_instances
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND sapVirtualInstanceName = 'replace-me';
```

</TabItem>
</Tabs>
