--- 
title: vw_dedicated_hsms
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_dedicated_hsms
  - hardware_security_modules
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

Creates, updates, deletes, gets or lists a <code>vw_dedicated_hsms</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_dedicated_hsms</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hardware_security_modules.vw_dedicated_hsms" /></td></tr>
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
sku as sku,
zones as zones,
tags as tags,
JSON_EXTRACT(properties, '$.networkProfile') as "network_profile",
JSON_EXTRACT(properties, '$.managementNetworkProfile') as "management_network_profile",
JSON_EXTRACT(properties, '$.stampId') as "stamp_id",
JSON_EXTRACT(properties, '$.statusMessage') as "status_message",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
name
FROM azure.hardware_security_modules.dedicated_hsms
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
sku as sku,
zones as zones,
tags as tags,
json_extract_path_text(properties, '$.networkProfile') as "network_profile",
json_extract_path_text(properties, '$.managementNetworkProfile') as "management_network_profile",
json_extract_path_text(properties, '$.stampId') as "stamp_id",
json_extract_path_text(properties, '$.statusMessage') as "status_message",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
name
FROM azure.hardware_security_modules.dedicated_hsms
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
