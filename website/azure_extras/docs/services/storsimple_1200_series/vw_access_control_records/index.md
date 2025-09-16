--- 
title: vw_access_control_records
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_access_control_records
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

Creates, updates, deletes, gets or lists a <code>vw_access_control_records</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_access_control_records</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_1200_series.vw_access_control_records" /></td></tr>
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
JSON_EXTRACT(properties, '$.initiatorName') as "initiator_name",
subscriptionId,
resourceGroupName,
managerName,
accessControlRecordName
FROM azure_extras.storsimple_1200_series.access_control_records
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.initiatorName') as "initiator_name",
subscriptionId,
resourceGroupName,
managerName,
accessControlRecordName
FROM azure_extras.storsimple_1200_series.access_control_records
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me';
```

</TabItem>
</Tabs>
