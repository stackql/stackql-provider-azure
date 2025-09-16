--- 
title: vw_capacities_details
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_capacities_details
  - powerbi_dedicated
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

Creates, updates, deletes, gets or lists a <code>vw_capacities_details</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_capacities_details</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.powerbi_dedicated.vw_capacities_details" /></td></tr>
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
sku as sku,
type as type,
tags as tags,
systemData as system_data,
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.administration') as "administration",
JSON_EXTRACT(properties, '$.mode') as "mode",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
subscriptionId,
resourceGroupName,
dedicatedCapacityName
FROM azure.powerbi_dedicated.capacities_details
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dedicatedCapacityName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
sku as sku,
type as type,
tags as tags,
systemData as system_data,
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.administration') as "administration",
json_extract_path_text(properties, '$.mode') as "mode",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
subscriptionId,
resourceGroupName,
dedicatedCapacityName
FROM azure.powerbi_dedicated.capacities_details
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dedicatedCapacityName = 'replace-me';
```

</TabItem>
</Tabs>
