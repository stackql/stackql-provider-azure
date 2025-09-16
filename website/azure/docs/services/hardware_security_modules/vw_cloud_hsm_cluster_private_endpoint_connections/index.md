--- 
title: vw_cloud_hsm_cluster_private_endpoint_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_cloud_hsm_cluster_private_endpoint_connections
  - hardware_security_modules
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

Creates, updates, deletes, gets or lists a <code>vw_cloud_hsm_cluster_private_endpoint_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_cloud_hsm_cluster_private_endpoint_connections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hardware_security_modules.vw_cloud_hsm_cluster_private_endpoint_connections" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.privateEndpoint') as "private_endpoint",
JSON_EXTRACT(properties, '$.privateLinkServiceConnectionState') as "private_link_service_connection_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.groupIds') as "group_ids",
subscriptionId,
resourceGroupName,
cloudHsmClusterName,
peConnectionName
FROM azure.hardware_security_modules.cloud_hsm_cluster_private_endpoint_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND cloudHsmClusterName = 'replace-me' AND peConnectionName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
json_extract_path_text(properties, '$.privateEndpoint') as "private_endpoint",
json_extract_path_text(properties, '$.privateLinkServiceConnectionState') as "private_link_service_connection_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.groupIds') as "group_ids",
subscriptionId,
resourceGroupName,
cloudHsmClusterName,
peConnectionName
FROM azure.hardware_security_modules.cloud_hsm_cluster_private_endpoint_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND cloudHsmClusterName = 'replace-me' AND peConnectionName = 'replace-me';
```

</TabItem>
</Tabs>
