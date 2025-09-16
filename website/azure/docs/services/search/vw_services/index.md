--- 
title: vw_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_services
  - search
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.search.vw_services" /></td></tr>
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
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.replicaCount') as "replica_count",
JSON_EXTRACT(properties, '$.partitionCount') as "partition_count",
JSON_EXTRACT(properties, '$.hostingMode') as "hosting_mode",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.statusDetails') as "status_details",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.networkRuleSet') as "network_rule_set",
JSON_EXTRACT(properties, '$.disabledDataExfiltrationOptions') as "disabled_data_exfiltration_options",
JSON_EXTRACT(properties, '$.encryptionWithCmk') as "encryption_with_cmk",
JSON_EXTRACT(properties, '$.disableLocalAuth') as "disable_local_auth",
JSON_EXTRACT(properties, '$.authOptions') as "auth_options",
JSON_EXTRACT(properties, '$.semanticSearch') as "semantic_search",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.sharedPrivateLinkResources') as "shared_private_link_resources",
JSON_EXTRACT(properties, '$.eTag') as "e_tag",
subscriptionId,
resourceGroupName,
searchServiceName
FROM azure.search.services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
sku as sku,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.replicaCount') as "replica_count",
json_extract_path_text(properties, '$.partitionCount') as "partition_count",
json_extract_path_text(properties, '$.hostingMode') as "hosting_mode",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.statusDetails') as "status_details",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.networkRuleSet') as "network_rule_set",
json_extract_path_text(properties, '$.disabledDataExfiltrationOptions') as "disabled_data_exfiltration_options",
json_extract_path_text(properties, '$.encryptionWithCmk') as "encryption_with_cmk",
json_extract_path_text(properties, '$.disableLocalAuth') as "disable_local_auth",
json_extract_path_text(properties, '$.authOptions') as "auth_options",
json_extract_path_text(properties, '$.semanticSearch') as "semantic_search",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.sharedPrivateLinkResources') as "shared_private_link_resources",
json_extract_path_text(properties, '$.eTag') as "e_tag",
subscriptionId,
resourceGroupName,
searchServiceName
FROM azure.search.services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
