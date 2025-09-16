--- 
title: vw_replicas
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replicas
  - web_pubsub
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

Creates, updates, deletes, gets or lists a <code>vw_replicas</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replicas</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.web_pubsub.vw_replicas" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.regionEndpointEnabled') as "region_endpoint_enabled",
JSON_EXTRACT(properties, '$.resourceStopped') as "resource_stopped",
subscriptionId,
resourceGroupName,
resourceName,
replicaName
FROM azure.web_pubsub.replicas
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
sku as sku,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.regionEndpointEnabled') as "region_endpoint_enabled",
json_extract_path_text(properties, '$.resourceStopped') as "resource_stopped",
subscriptionId,
resourceGroupName,
resourceName,
replicaName
FROM azure.web_pubsub.replicas
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
