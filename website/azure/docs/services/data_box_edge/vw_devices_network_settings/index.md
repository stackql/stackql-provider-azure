--- 
title: vw_devices_network_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_devices_network_settings
  - data_box_edge
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

Creates, updates, deletes, gets or lists a <code>vw_devices_network_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_devices_network_settings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_box_edge.vw_devices_network_settings" /></td></tr>
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
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.networkAdapters') as "network_adapters",
subscriptionId,
resourceGroupName,
deviceName
FROM azure.data_box_edge.devices_network_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.networkAdapters') as "network_adapters",
subscriptionId,
resourceGroupName,
deviceName
FROM azure.data_box_edge.devices_network_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
</Tabs>
