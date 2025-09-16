--- 
title: vw_defender_for_storages
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_defender_for_storages
  - security
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

Creates, updates, deletes, gets or lists a <code>vw_defender_for_storages</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_defender_for_storages</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.vw_defender_for_storages" /></td></tr>
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
JSON_EXTRACT(properties, '$.isEnabled') as "is_enabled",
JSON_EXTRACT(properties, '$.malwareScanning') as "malware_scanning",
JSON_EXTRACT(properties, '$.sensitiveDataDiscovery') as "sensitive_data_discovery",
JSON_EXTRACT(properties, '$.overrideSubscriptionLevelSettings') as "override_subscription_level_settings",
resourceId,
settingName
FROM azure.security.defender_for_storages
WHERE resourceId = 'replace-me' AND settingName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.isEnabled') as "is_enabled",
json_extract_path_text(properties, '$.malwareScanning') as "malware_scanning",
json_extract_path_text(properties, '$.sensitiveDataDiscovery') as "sensitive_data_discovery",
json_extract_path_text(properties, '$.overrideSubscriptionLevelSettings') as "override_subscription_level_settings",
resourceId,
settingName
FROM azure.security.defender_for_storages
WHERE resourceId = 'replace-me' AND settingName = 'replace-me';
```

</TabItem>
</Tabs>
