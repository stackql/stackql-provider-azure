--- 
title: vw_available_inplace_upgrade_os
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_available_inplace_upgrade_os
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

Creates, updates, deletes, gets or lists a <code>vw_available_inplace_upgrade_os</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_available_inplace_upgrade_os</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.vw_available_inplace_upgrade_os" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.sourceOsName') as "source_os_name",
JSON_EXTRACT(properties, '$.sourceOsReleases') as "source_os_releases",
JSON_EXTRACT(properties, '$.supportedTargetOsNameList') as "supported_target_os_name_list",
subscriptionId,
resourceGroupName,
testBaseAccountName,
availableInplaceUpgradeOSResourceName,
osUpdateType
FROM azure_extras.test_base.available_inplace_upgrade_os
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me' AND osUpdateType = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.sourceOsName') as "source_os_name",
json_extract_path_text(properties, '$.sourceOsReleases') as "source_os_releases",
json_extract_path_text(properties, '$.supportedTargetOsNameList') as "supported_target_os_name_list",
subscriptionId,
resourceGroupName,
testBaseAccountName,
availableInplaceUpgradeOSResourceName,
osUpdateType
FROM azure_extras.test_base.available_inplace_upgrade_os
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me' AND osUpdateType = 'replace-me';
```

</TabItem>
</Tabs>
