--- 
title: vw_system_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_system_versions
  - oracle
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

Creates, updates, deletes, gets or lists a <code>vw_system_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_system_versions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.oracle.vw_system_versions" /></td></tr>
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
JSON_EXTRACT(properties, '$.systemVersion') as "system_version",
subscriptionId,
location,
systemversionname
FROM azure_isv.oracle.system_versions
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.systemVersion') as "system_version",
subscriptionId,
location,
systemversionname
FROM azure_isv.oracle.system_versions
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
