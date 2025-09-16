--- 
title: vw_streaming_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_streaming_endpoints
  - media_services
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

Creates, updates, deletes, gets or lists a <code>vw_streaming_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_streaming_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.media_services.vw_streaming_endpoints" /></td></tr>
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
systemData as system_data,
sku as sku,
tags as tags,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.scaleUnits') as "scale_units",
JSON_EXTRACT(properties, '$.availabilitySetName') as "availability_set_name",
JSON_EXTRACT(properties, '$.accessControl') as "access_control",
JSON_EXTRACT(properties, '$.maxCacheAge') as "max_cache_age",
JSON_EXTRACT(properties, '$.customHostNames') as "custom_host_names",
JSON_EXTRACT(properties, '$.hostName') as "host_name",
JSON_EXTRACT(properties, '$.cdnEnabled') as "cdn_enabled",
JSON_EXTRACT(properties, '$.cdnProvider') as "cdn_provider",
JSON_EXTRACT(properties, '$.cdnProfile') as "cdn_profile",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.resourceState') as "resource_state",
JSON_EXTRACT(properties, '$.crossSiteAccessPolicies') as "cross_site_access_policies",
JSON_EXTRACT(properties, '$.freeTrialEndTime') as "free_trial_end_time",
JSON_EXTRACT(properties, '$.created') as "created",
JSON_EXTRACT(properties, '$.lastModified') as "last_modified",
subscriptionId,
resourceGroupName,
accountName,
streamingEndpointName
FROM azure.media_services.streaming_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
systemData as system_data,
sku as sku,
tags as tags,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.scaleUnits') as "scale_units",
json_extract_path_text(properties, '$.availabilitySetName') as "availability_set_name",
json_extract_path_text(properties, '$.accessControl') as "access_control",
json_extract_path_text(properties, '$.maxCacheAge') as "max_cache_age",
json_extract_path_text(properties, '$.customHostNames') as "custom_host_names",
json_extract_path_text(properties, '$.hostName') as "host_name",
json_extract_path_text(properties, '$.cdnEnabled') as "cdn_enabled",
json_extract_path_text(properties, '$.cdnProvider') as "cdn_provider",
json_extract_path_text(properties, '$.cdnProfile') as "cdn_profile",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resourceState') as "resource_state",
json_extract_path_text(properties, '$.crossSiteAccessPolicies') as "cross_site_access_policies",
json_extract_path_text(properties, '$.freeTrialEndTime') as "free_trial_end_time",
json_extract_path_text(properties, '$.created') as "created",
json_extract_path_text(properties, '$.lastModified') as "last_modified",
subscriptionId,
resourceGroupName,
accountName,
streamingEndpointName
FROM azure.media_services.streaming_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
