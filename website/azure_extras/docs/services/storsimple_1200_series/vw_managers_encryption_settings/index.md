--- 
title: vw_managers_encryption_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_managers_encryption_settings
  - storsimple_1200_series
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

Creates, updates, deletes, gets or lists a <code>vw_managers_encryption_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_managers_encryption_settings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_1200_series.vw_managers_encryption_settings" /></td></tr>
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
JSON_EXTRACT(properties, '$.encryptionStatus') as "encryption_status",
JSON_EXTRACT(properties, '$.keyRolloverStatus') as "key_rollover_status",
subscriptionId,
resourceGroupName,
managerName
FROM azure_extras.storsimple_1200_series.managers_encryption_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.encryptionStatus') as "encryption_status",
json_extract_path_text(properties, '$.keyRolloverStatus') as "key_rollover_status",
subscriptionId,
resourceGroupName,
managerName
FROM azure_extras.storsimple_1200_series.managers_encryption_settings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me';
```

</TabItem>
</Tabs>
