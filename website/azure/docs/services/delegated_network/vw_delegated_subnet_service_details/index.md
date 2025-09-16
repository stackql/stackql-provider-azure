--- 
title: vw_delegated_subnet_service_details
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_delegated_subnet_service_details
  - delegated_network
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

Creates, updates, deletes, gets or lists a <code>vw_delegated_subnet_service_details</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_delegated_subnet_service_details</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.delegated_network.vw_delegated_subnet_service_details" /></td></tr>
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
id as id,
name as name,
location as location,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.subnetDetails') as "subnet_details",
JSON_EXTRACT(properties, '$.controllerDetails') as "controller_details",
JSON_EXTRACT(properties, '$.allocationBlockPrefixSize') as "allocation_block_prefix_size",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.delegated_network.delegated_subnet_service_details
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.subnetDetails') as "subnet_details",
json_extract_path_text(properties, '$.controllerDetails') as "controller_details",
json_extract_path_text(properties, '$.allocationBlockPrefixSize') as "allocation_block_prefix_size",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.delegated_network.delegated_subnet_service_details
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
