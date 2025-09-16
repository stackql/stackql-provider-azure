--- 
title: vw_dedicated_hosts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_dedicated_hosts
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

Creates, updates, deletes, gets or lists a <code>vw_dedicated_hosts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_dedicated_hosts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_dedicated_hosts" /></td></tr>
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
JSON_EXTRACT(properties, '$.platformFaultDomain') as "platform_fault_domain",
JSON_EXTRACT(properties, '$.autoReplaceOnFailure') as "auto_replace_on_failure",
JSON_EXTRACT(properties, '$.hostId') as "host_id",
JSON_EXTRACT(properties, '$.virtualMachines') as "virtual_machines",
JSON_EXTRACT(properties, '$.licenseType') as "license_type",
JSON_EXTRACT(properties, '$.provisioningTime') as "provisioning_time",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.instanceView') as "instance_view",
JSON_EXTRACT(properties, '$.timeCreated') as "time_created",
subscriptionId,
resourceGroupName,
hostGroupName,
hostName
FROM azure.compute.dedicated_hosts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hostGroupName = 'replace-me';
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
json_extract_path_text(properties, '$.platformFaultDomain') as "platform_fault_domain",
json_extract_path_text(properties, '$.autoReplaceOnFailure') as "auto_replace_on_failure",
json_extract_path_text(properties, '$.hostId') as "host_id",
json_extract_path_text(properties, '$.virtualMachines') as "virtual_machines",
json_extract_path_text(properties, '$.licenseType') as "license_type",
json_extract_path_text(properties, '$.provisioningTime') as "provisioning_time",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.instanceView') as "instance_view",
json_extract_path_text(properties, '$.timeCreated') as "time_created",
subscriptionId,
resourceGroupName,
hostGroupName,
hostName
FROM azure.compute.dedicated_hosts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hostGroupName = 'replace-me';
```

</TabItem>
</Tabs>
