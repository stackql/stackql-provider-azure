--- 
title: vw_controller_details
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_controller_details
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

Creates, updates, deletes, gets or lists a <code>vw_controller_details</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_controller_details</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.delegated_network.vw_controller_details" /></td></tr>
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
JSON_EXTRACT(properties, '$.dncAppId') as "dnc_app_id",
JSON_EXTRACT(properties, '$.dncTenantId') as "dnc_tenant_id",
JSON_EXTRACT(properties, '$.dncEndpoint') as "dnc_endpoint",
JSON_EXTRACT(properties, '$.purpose') as "purpose",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.delegated_network.controller_details
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
json_extract_path_text(properties, '$.dncAppId') as "dnc_app_id",
json_extract_path_text(properties, '$.dncTenantId') as "dnc_tenant_id",
json_extract_path_text(properties, '$.dncEndpoint') as "dnc_endpoint",
json_extract_path_text(properties, '$.purpose') as "purpose",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.delegated_network.controller_details
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
