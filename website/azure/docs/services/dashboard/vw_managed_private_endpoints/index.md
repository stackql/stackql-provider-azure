--- 
title: vw_managed_private_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_managed_private_endpoints
  - dashboard
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

Creates, updates, deletes, gets or lists a <code>vw_managed_private_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_managed_private_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dashboard.vw_managed_private_endpoints" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.privateLinkResourceId') as "private_link_resource_id",
JSON_EXTRACT(properties, '$.privateLinkResourceRegion') as "private_link_resource_region",
JSON_EXTRACT(properties, '$.groupIds') as "group_ids",
JSON_EXTRACT(properties, '$.requestMessage') as "request_message",
JSON_EXTRACT(properties, '$.connectionState') as "connection_state",
JSON_EXTRACT(properties, '$.privateLinkServiceUrl') as "private_link_service_url",
JSON_EXTRACT(properties, '$.privateLinkServicePrivateIP') as "private_link_service_private_ip",
subscriptionId,
resourceGroupName,
workspaceName,
managedPrivateEndpointName
FROM azure.dashboard.managed_private_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.privateLinkResourceId') as "private_link_resource_id",
json_extract_path_text(properties, '$.privateLinkResourceRegion') as "private_link_resource_region",
json_extract_path_text(properties, '$.groupIds') as "group_ids",
json_extract_path_text(properties, '$.requestMessage') as "request_message",
json_extract_path_text(properties, '$.connectionState') as "connection_state",
json_extract_path_text(properties, '$.privateLinkServiceUrl') as "private_link_service_url",
json_extract_path_text(properties, '$.privateLinkServicePrivateIP') as "private_link_service_private_ip",
subscriptionId,
resourceGroupName,
workspaceName,
managedPrivateEndpointName
FROM azure.dashboard.managed_private_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
