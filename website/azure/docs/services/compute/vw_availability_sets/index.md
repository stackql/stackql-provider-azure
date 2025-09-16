--- 
title: vw_availability_sets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_availability_sets
  - compute
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

Creates, updates, deletes, gets or lists a <code>vw_availability_sets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_availability_sets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_availability_sets" /></td></tr>
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
JSON_EXTRACT(properties, '$.platformUpdateDomainCount') as "platform_update_domain_count",
JSON_EXTRACT(properties, '$.platformFaultDomainCount') as "platform_fault_domain_count",
JSON_EXTRACT(properties, '$.virtualMachines') as "virtual_machines",
JSON_EXTRACT(properties, '$.proximityPlacementGroup') as "proximity_placement_group",
JSON_EXTRACT(properties, '$.statuses') as "statuses",
JSON_EXTRACT(properties, '$.scheduledEventsPolicy') as "scheduled_events_policy",
subscriptionId,
resourceGroupName,
availabilitySetName
FROM azure.compute.availability_sets
WHERE subscriptionId = 'replace-me';
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
json_extract_path_text(properties, '$.platformUpdateDomainCount') as "platform_update_domain_count",
json_extract_path_text(properties, '$.platformFaultDomainCount') as "platform_fault_domain_count",
json_extract_path_text(properties, '$.virtualMachines') as "virtual_machines",
json_extract_path_text(properties, '$.proximityPlacementGroup') as "proximity_placement_group",
json_extract_path_text(properties, '$.statuses') as "statuses",
json_extract_path_text(properties, '$.scheduledEventsPolicy') as "scheduled_events_policy",
subscriptionId,
resourceGroupName,
availabilitySetName
FROM azure.compute.availability_sets
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
