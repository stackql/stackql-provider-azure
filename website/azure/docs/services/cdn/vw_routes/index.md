--- 
title: vw_routes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_routes
  - cdn
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

Creates, updates, deletes, gets or lists a <code>vw_routes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_routes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cdn.vw_routes" /></td></tr>
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
JSON_EXTRACT(properties, '$.endpointName') as "endpoint_name",
JSON_EXTRACT(properties, '$.customDomains') as "custom_domains",
JSON_EXTRACT(properties, '$.originGroup') as "origin_group",
JSON_EXTRACT(properties, '$.originPath') as "origin_path",
JSON_EXTRACT(properties, '$.ruleSets') as "rule_sets",
JSON_EXTRACT(properties, '$.supportedProtocols') as "supported_protocols",
JSON_EXTRACT(properties, '$.patternsToMatch') as "patterns_to_match",
JSON_EXTRACT(properties, '$.cacheConfiguration') as "cache_configuration",
JSON_EXTRACT(properties, '$.forwardingProtocol') as "forwarding_protocol",
JSON_EXTRACT(properties, '$.linkToDefaultDomain') as "link_to_default_domain",
JSON_EXTRACT(properties, '$.httpsRedirect') as "https_redirect",
JSON_EXTRACT(properties, '$.enabledState') as "enabled_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.deploymentStatus') as "deployment_status",
subscriptionId,
resourceGroupName,
profileName,
endpointName,
routeName
FROM azure.cdn.routes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me' AND endpointName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.endpointName') as "endpoint_name",
json_extract_path_text(properties, '$.customDomains') as "custom_domains",
json_extract_path_text(properties, '$.originGroup') as "origin_group",
json_extract_path_text(properties, '$.originPath') as "origin_path",
json_extract_path_text(properties, '$.ruleSets') as "rule_sets",
json_extract_path_text(properties, '$.supportedProtocols') as "supported_protocols",
json_extract_path_text(properties, '$.patternsToMatch') as "patterns_to_match",
json_extract_path_text(properties, '$.cacheConfiguration') as "cache_configuration",
json_extract_path_text(properties, '$.forwardingProtocol') as "forwarding_protocol",
json_extract_path_text(properties, '$.linkToDefaultDomain') as "link_to_default_domain",
json_extract_path_text(properties, '$.httpsRedirect') as "https_redirect",
json_extract_path_text(properties, '$.enabledState') as "enabled_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.deploymentStatus') as "deployment_status",
subscriptionId,
resourceGroupName,
profileName,
endpointName,
routeName
FROM azure.cdn.routes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me' AND endpointName = 'replace-me';
```

</TabItem>
</Tabs>
