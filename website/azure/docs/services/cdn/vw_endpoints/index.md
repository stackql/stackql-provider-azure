--- 
title: vw_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_endpoints
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

Creates, updates, deletes, gets or lists a <code>vw_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cdn.vw_endpoints" /></td></tr>
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
JSON_EXTRACT(properties, '$.originPath') as "origin_path",
JSON_EXTRACT(properties, '$.contentTypesToCompress') as "content_types_to_compress",
JSON_EXTRACT(properties, '$.originHostHeader') as "origin_host_header",
JSON_EXTRACT(properties, '$.isCompressionEnabled') as "is_compression_enabled",
JSON_EXTRACT(properties, '$.isHttpAllowed') as "is_http_allowed",
JSON_EXTRACT(properties, '$.isHttpsAllowed') as "is_https_allowed",
JSON_EXTRACT(properties, '$.queryStringCachingBehavior') as "query_string_caching_behavior",
JSON_EXTRACT(properties, '$.optimizationType') as "optimization_type",
JSON_EXTRACT(properties, '$.probePath') as "probe_path",
JSON_EXTRACT(properties, '$.geoFilters') as "geo_filters",
JSON_EXTRACT(properties, '$.defaultOriginGroup') as "default_origin_group",
JSON_EXTRACT(properties, '$.urlSigningKeys') as "url_signing_keys",
JSON_EXTRACT(properties, '$.deliveryPolicy') as "delivery_policy",
JSON_EXTRACT(properties, '$.webApplicationFirewallPolicyLink') as "web_application_firewall_policy_link",
JSON_EXTRACT(properties, '$.hostName') as "host_name",
JSON_EXTRACT(properties, '$.origins') as "origins",
JSON_EXTRACT(properties, '$.originGroups') as "origin_groups",
JSON_EXTRACT(properties, '$.customDomains') as "custom_domains",
JSON_EXTRACT(properties, '$.resourceState') as "resource_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
profileName,
endpointName
FROM azure.cdn.endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.originPath') as "origin_path",
json_extract_path_text(properties, '$.contentTypesToCompress') as "content_types_to_compress",
json_extract_path_text(properties, '$.originHostHeader') as "origin_host_header",
json_extract_path_text(properties, '$.isCompressionEnabled') as "is_compression_enabled",
json_extract_path_text(properties, '$.isHttpAllowed') as "is_http_allowed",
json_extract_path_text(properties, '$.isHttpsAllowed') as "is_https_allowed",
json_extract_path_text(properties, '$.queryStringCachingBehavior') as "query_string_caching_behavior",
json_extract_path_text(properties, '$.optimizationType') as "optimization_type",
json_extract_path_text(properties, '$.probePath') as "probe_path",
json_extract_path_text(properties, '$.geoFilters') as "geo_filters",
json_extract_path_text(properties, '$.defaultOriginGroup') as "default_origin_group",
json_extract_path_text(properties, '$.urlSigningKeys') as "url_signing_keys",
json_extract_path_text(properties, '$.deliveryPolicy') as "delivery_policy",
json_extract_path_text(properties, '$.webApplicationFirewallPolicyLink') as "web_application_firewall_policy_link",
json_extract_path_text(properties, '$.hostName') as "host_name",
json_extract_path_text(properties, '$.origins') as "origins",
json_extract_path_text(properties, '$.originGroups') as "origin_groups",
json_extract_path_text(properties, '$.customDomains') as "custom_domains",
json_extract_path_text(properties, '$.resourceState') as "resource_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
profileName,
endpointName
FROM azure.cdn.endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me';
```

</TabItem>
</Tabs>
