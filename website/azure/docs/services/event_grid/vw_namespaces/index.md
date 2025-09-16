--- 
title: vw_namespaces
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_namespaces
  - event_grid
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

Creates, updates, deletes, gets or lists a <code>vw_namespaces</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_namespaces</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.event_grid.vw_namespaces" /></td></tr>
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
identity as identity,
systemData as system_data,
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.topicsConfiguration') as "topics_configuration",
JSON_EXTRACT(properties, '$.topicSpacesConfiguration') as "topic_spaces_configuration",
JSON_EXTRACT(properties, '$.isZoneRedundant') as "is_zone_redundant",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.inboundIpRules') as "inbound_ip_rules",
JSON_EXTRACT(properties, '$.minimumTlsVersionAllowed') as "minimum_tls_version_allowed",
subscriptionId,
resourceGroupName,
namespaceName
FROM azure.event_grid.namespaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
sku as sku,
identity as identity,
systemData as system_data,
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.topicsConfiguration') as "topics_configuration",
json_extract_path_text(properties, '$.topicSpacesConfiguration') as "topic_spaces_configuration",
json_extract_path_text(properties, '$.isZoneRedundant') as "is_zone_redundant",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.inboundIpRules') as "inbound_ip_rules",
json_extract_path_text(properties, '$.minimumTlsVersionAllowed') as "minimum_tls_version_allowed",
subscriptionId,
resourceGroupName,
namespaceName
FROM azure.event_grid.namespaces
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
