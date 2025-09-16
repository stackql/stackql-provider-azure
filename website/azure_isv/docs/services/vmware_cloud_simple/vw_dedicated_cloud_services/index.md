--- 
title: vw_dedicated_cloud_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_dedicated_cloud_services
  - vmware_cloud_simple
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_dedicated_cloud_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_dedicated_cloud_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.vmware_cloud_simple.vw_dedicated_cloud_services" /></td></tr>
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
tags as tags,
type as type,
JSON_EXTRACT(properties, '$.gatewaySubnet') as "gateway_subnet",
JSON_EXTRACT(properties, '$.isAccountOnboarded') as "is_account_onboarded",
JSON_EXTRACT(properties, '$.nodes') as "nodes",
JSON_EXTRACT(properties, '$.serviceURL') as "service_url",
subscriptionId,
resourceGroupName,
dedicatedCloudServiceName
FROM azure_isv.vmware_cloud_simple.dedicated_cloud_services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
tags as tags,
type as type,
json_extract_path_text(properties, '$.gatewaySubnet') as "gateway_subnet",
json_extract_path_text(properties, '$.isAccountOnboarded') as "is_account_onboarded",
json_extract_path_text(properties, '$.nodes') as "nodes",
json_extract_path_text(properties, '$.serviceURL') as "service_url",
subscriptionId,
resourceGroupName,
dedicatedCloudServiceName
FROM azure_isv.vmware_cloud_simple.dedicated_cloud_services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
