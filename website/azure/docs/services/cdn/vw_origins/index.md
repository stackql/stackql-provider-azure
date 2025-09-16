--- 
title: vw_origins
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_origins
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

Creates, updates, deletes, gets or lists a <code>vw_origins</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_origins</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cdn.vw_origins" /></td></tr>
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
JSON_EXTRACT(properties, '$.hostName') as "host_name",
JSON_EXTRACT(properties, '$.httpPort') as "http_port",
JSON_EXTRACT(properties, '$.httpsPort') as "https_port",
JSON_EXTRACT(properties, '$.originHostHeader') as "origin_host_header",
JSON_EXTRACT(properties, '$.priority') as "priority",
JSON_EXTRACT(properties, '$.weight') as "weight",
JSON_EXTRACT(properties, '$.enabled') as "enabled",
JSON_EXTRACT(properties, '$.privateLinkAlias') as "private_link_alias",
JSON_EXTRACT(properties, '$.privateLinkResourceId') as "private_link_resource_id",
JSON_EXTRACT(properties, '$.privateLinkLocation') as "private_link_location",
JSON_EXTRACT(properties, '$.privateLinkApprovalMessage') as "private_link_approval_message",
JSON_EXTRACT(properties, '$.resourceState') as "resource_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.privateEndpointStatus') as "private_endpoint_status",
subscriptionId,
resourceGroupName,
profileName,
endpointName,
originName
FROM azure.cdn.origins
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me' AND endpointName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.hostName') as "host_name",
json_extract_path_text(properties, '$.httpPort') as "http_port",
json_extract_path_text(properties, '$.httpsPort') as "https_port",
json_extract_path_text(properties, '$.originHostHeader') as "origin_host_header",
json_extract_path_text(properties, '$.priority') as "priority",
json_extract_path_text(properties, '$.weight') as "weight",
json_extract_path_text(properties, '$.enabled') as "enabled",
json_extract_path_text(properties, '$.privateLinkAlias') as "private_link_alias",
json_extract_path_text(properties, '$.privateLinkResourceId') as "private_link_resource_id",
json_extract_path_text(properties, '$.privateLinkLocation') as "private_link_location",
json_extract_path_text(properties, '$.privateLinkApprovalMessage') as "private_link_approval_message",
json_extract_path_text(properties, '$.resourceState') as "resource_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.privateEndpointStatus') as "private_endpoint_status",
subscriptionId,
resourceGroupName,
profileName,
endpointName,
originName
FROM azure.cdn.origins
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND profileName = 'replace-me' AND endpointName = 'replace-me';
```

</TabItem>
</Tabs>
