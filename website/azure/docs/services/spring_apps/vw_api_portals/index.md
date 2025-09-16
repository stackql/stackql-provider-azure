--- 
title: vw_api_portals
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_api_portals
  - spring_apps
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

Creates, updates, deletes, gets or lists a <code>vw_api_portals</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_api_portals</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.spring_apps.vw_api_portals" /></td></tr>
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
sku as sku,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.public') as "public",
JSON_EXTRACT(properties, '$.url') as "url",
JSON_EXTRACT(properties, '$.httpsOnly') as "https_only",
JSON_EXTRACT(properties, '$.gatewayIds') as "gateway_ids",
JSON_EXTRACT(properties, '$.sourceUrls') as "source_urls",
JSON_EXTRACT(properties, '$.ssoProperties') as "sso_properties",
JSON_EXTRACT(properties, '$.resourceRequests') as "resource_requests",
JSON_EXTRACT(properties, '$.instances') as "instances",
JSON_EXTRACT(properties, '$.apiTryOutEnabledState') as "api_try_out_enabled_state",
subscriptionId,
resourceGroupName,
serviceName,
apiPortalName
FROM azure.spring_apps.api_portals
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
sku as sku,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.public') as "public",
json_extract_path_text(properties, '$.url') as "url",
json_extract_path_text(properties, '$.httpsOnly') as "https_only",
json_extract_path_text(properties, '$.gatewayIds') as "gateway_ids",
json_extract_path_text(properties, '$.sourceUrls') as "source_urls",
json_extract_path_text(properties, '$.ssoProperties') as "sso_properties",
json_extract_path_text(properties, '$.resourceRequests') as "resource_requests",
json_extract_path_text(properties, '$.instances') as "instances",
json_extract_path_text(properties, '$.apiTryOutEnabledState') as "api_try_out_enabled_state",
subscriptionId,
resourceGroupName,
serviceName,
apiPortalName
FROM azure.spring_apps.api_portals
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serviceName = 'replace-me';
```

</TabItem>
</Tabs>
