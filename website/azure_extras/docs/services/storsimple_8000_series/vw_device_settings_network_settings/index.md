--- 
title: vw_device_settings_network_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_device_settings_network_settings
  - storsimple_8000_series
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

Creates, updates, deletes, gets or lists a <code>vw_device_settings_network_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_device_settings_network_settings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_8000_series.vw_device_settings_network_settings" /></td></tr>
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
kind as kind,
JSON_EXTRACT(properties, '$.dnsSettings') as "dns_settings",
JSON_EXTRACT(properties, '$.networkAdapters') as "network_adapters",
JSON_EXTRACT(properties, '$.webproxySettings') as "webproxy_settings",
subscriptionId,
resourceGroupName,
managerName,
deviceName
FROM azure_extras.storsimple_8000_series.device_settings_network_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
kind as kind,
json_extract_path_text(properties, '$.dnsSettings') as "dns_settings",
json_extract_path_text(properties, '$.networkAdapters') as "network_adapters",
json_extract_path_text(properties, '$.webproxySettings') as "webproxy_settings",
subscriptionId,
resourceGroupName,
managerName,
deviceName
FROM azure_extras.storsimple_8000_series.device_settings_network_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
</Tabs>
