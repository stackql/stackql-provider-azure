--- 
title: vw_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_services
  - data_migration
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

Creates, updates, deletes, gets or lists a <code>vw_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_migration.vw_services" /></td></tr>
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
etag as etag,
kind as kind,
sku as sku,
systemData as system_data,
tags as tags,
type as type,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.publicKey') as "public_key",
JSON_EXTRACT(properties, '$.virtualSubnetId') as "virtual_subnet_id",
JSON_EXTRACT(properties, '$.virtualNicId') as "virtual_nic_id",
JSON_EXTRACT(properties, '$.autoStopDelay') as "auto_stop_delay",
JSON_EXTRACT(properties, '$.deleteResourcesOnStop') as "delete_resources_on_stop",
subscriptionId,
groupName,
serviceName
FROM azure.data_migration.services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
etag as etag,
kind as kind,
sku as sku,
systemData as system_data,
tags as tags,
type as type,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.publicKey') as "public_key",
json_extract_path_text(properties, '$.virtualSubnetId') as "virtual_subnet_id",
json_extract_path_text(properties, '$.virtualNicId') as "virtual_nic_id",
json_extract_path_text(properties, '$.autoStopDelay') as "auto_stop_delay",
json_extract_path_text(properties, '$.deleteResourcesOnStop') as "delete_resources_on_stop",
subscriptionId,
groupName,
serviceName
FROM azure.data_migration.services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
