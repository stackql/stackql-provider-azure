--- 
title: vw_streaming_locators
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_streaming_locators
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

Creates, updates, deletes, gets or lists a <code>vw_streaming_locators</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_streaming_locators</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.media_services.vw_streaming_locators" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.assetName') as "asset_name",
JSON_EXTRACT(properties, '$.created') as "created",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.streamingLocatorId') as "streaming_locator_id",
JSON_EXTRACT(properties, '$.streamingPolicyName') as "streaming_policy_name",
JSON_EXTRACT(properties, '$.defaultContentKeyPolicyName') as "default_content_key_policy_name",
JSON_EXTRACT(properties, '$.contentKeys') as "content_keys",
JSON_EXTRACT(properties, '$.alternativeMediaId') as "alternative_media_id",
JSON_EXTRACT(properties, '$.filters') as "filters",
subscriptionId,
resourceGroupName,
accountName,
streamingLocatorName
FROM azure.media_services.streaming_locators
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.assetName') as "asset_name",
json_extract_path_text(properties, '$.created') as "created",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.streamingLocatorId') as "streaming_locator_id",
json_extract_path_text(properties, '$.streamingPolicyName') as "streaming_policy_name",
json_extract_path_text(properties, '$.defaultContentKeyPolicyName') as "default_content_key_policy_name",
json_extract_path_text(properties, '$.contentKeys') as "content_keys",
json_extract_path_text(properties, '$.alternativeMediaId') as "alternative_media_id",
json_extract_path_text(properties, '$.filters') as "filters",
subscriptionId,
resourceGroupName,
accountName,
streamingLocatorName
FROM azure.media_services.streaming_locators
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
