--- 
title: vw_dscp_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_dscp_configurations
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

Creates, updates, deletes, gets or lists a <code>vw_dscp_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_dscp_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_dscp_configurations" /></td></tr>
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
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.markings') as "markings",
JSON_EXTRACT(properties, '$.sourceIpRanges') as "source_ip_ranges",
JSON_EXTRACT(properties, '$.destinationIpRanges') as "destination_ip_ranges",
JSON_EXTRACT(properties, '$.sourcePortRanges') as "source_port_ranges",
JSON_EXTRACT(properties, '$.destinationPortRanges') as "destination_port_ranges",
JSON_EXTRACT(properties, '$.protocol') as "protocol",
JSON_EXTRACT(properties, '$.qosDefinitionCollection') as "qos_definition_collection",
JSON_EXTRACT(properties, '$.qosCollectionId') as "qos_collection_id",
JSON_EXTRACT(properties, '$.associatedNetworkInterfaces') as "associated_network_interfaces",
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
dscpConfigurationName
FROM azure.network.dscp_configurations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.markings') as "markings",
json_extract_path_text(properties, '$.sourceIpRanges') as "source_ip_ranges",
json_extract_path_text(properties, '$.destinationIpRanges') as "destination_ip_ranges",
json_extract_path_text(properties, '$.sourcePortRanges') as "source_port_ranges",
json_extract_path_text(properties, '$.destinationPortRanges') as "destination_port_ranges",
json_extract_path_text(properties, '$.protocol') as "protocol",
json_extract_path_text(properties, '$.qosDefinitionCollection') as "qos_definition_collection",
json_extract_path_text(properties, '$.qosCollectionId') as "qos_collection_id",
json_extract_path_text(properties, '$.associatedNetworkInterfaces') as "associated_network_interfaces",
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
dscpConfigurationName
FROM azure.network.dscp_configurations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
