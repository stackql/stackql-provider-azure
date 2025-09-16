--- 
title: vw_available_os
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_available_os
  - test_base
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

Creates, updates, deletes, gets or lists a <code>vw_available_os</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_available_os</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.vw_available_os" /></td></tr>
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
JSON_EXTRACT(properties, '$.osId') as "os_id",
JSON_EXTRACT(properties, '$.osName') as "os_name",
JSON_EXTRACT(properties, '$.osVersion') as "os_version",
JSON_EXTRACT(properties, '$.insiderChannel') as "insider_channel",
JSON_EXTRACT(properties, '$.osUpdateType') as "os_update_type",
JSON_EXTRACT(properties, '$.osPlatform') as "os_platform",
subscriptionId,
resourceGroupName,
testBaseAccountName,
availableOSResourceName,
osUpdateType
FROM azure_extras.test_base.available_os
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me' AND osUpdateType = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.osId') as "os_id",
json_extract_path_text(properties, '$.osName') as "os_name",
json_extract_path_text(properties, '$.osVersion') as "os_version",
json_extract_path_text(properties, '$.insiderChannel') as "insider_channel",
json_extract_path_text(properties, '$.osUpdateType') as "os_update_type",
json_extract_path_text(properties, '$.osPlatform') as "os_platform",
subscriptionId,
resourceGroupName,
testBaseAccountName,
availableOSResourceName,
osUpdateType
FROM azure_extras.test_base.available_os
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me' AND osUpdateType = 'replace-me';
```

</TabItem>
</Tabs>
