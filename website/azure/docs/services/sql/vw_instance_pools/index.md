--- 
title: vw_instance_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_instance_pools
  - sql
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

Creates, updates, deletes, gets or lists a <code>vw_instance_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_instance_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_instance_pools" /></td></tr>
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
JSON_EXTRACT(properties, '$.subnetId') as "subnet_id",
JSON_EXTRACT(properties, '$.vCores') as "v_cores",
JSON_EXTRACT(properties, '$.licenseType') as "license_type",
JSON_EXTRACT(properties, '$.dnsZone') as "dns_zone",
JSON_EXTRACT(properties, '$.maintenanceConfigurationId') as "maintenance_configuration_id",
subscriptionId,
resourceGroupName,
instancePoolName
FROM azure.sql.instance_pools
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
sku as sku,
json_extract_path_text(properties, '$.subnetId') as "subnet_id",
json_extract_path_text(properties, '$.vCores') as "v_cores",
json_extract_path_text(properties, '$.licenseType') as "license_type",
json_extract_path_text(properties, '$.dnsZone') as "dns_zone",
json_extract_path_text(properties, '$.maintenanceConfigurationId') as "maintenance_configuration_id",
subscriptionId,
resourceGroupName,
instancePoolName
FROM azure.sql.instance_pools
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
