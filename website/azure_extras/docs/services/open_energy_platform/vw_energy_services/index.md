--- 
title: vw_energy_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_energy_services
  - open_energy_platform
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_energy_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_energy_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.open_energy_platform.vw_energy_services" /></td></tr>
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
systemData as system_data,
tags as tags,
JSON_EXTRACT(properties, '$.dnsName') as "dns_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.authAppId') as "auth_app_id",
JSON_EXTRACT(properties, '$.dataPartitionNames') as "data_partition_names",
subscriptionId,
resourceGroupName,
resourceName
FROM azure_extras.open_energy_platform.energy_services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
systemData as system_data,
tags as tags,
json_extract_path_text(properties, '$.dnsName') as "dns_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.authAppId') as "auth_app_id",
json_extract_path_text(properties, '$.dataPartitionNames') as "data_partition_names",
subscriptionId,
resourceGroupName,
resourceName
FROM azure_extras.open_energy_platform.energy_services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
