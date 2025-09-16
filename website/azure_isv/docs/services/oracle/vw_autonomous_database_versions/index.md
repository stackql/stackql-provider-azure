--- 
title: vw_autonomous_database_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_autonomous_database_versions
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

Creates, updates, deletes, gets or lists a <code>vw_autonomous_database_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_autonomous_database_versions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.oracle.vw_autonomous_database_versions" /></td></tr>
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
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.dbWorkload') as "db_workload",
JSON_EXTRACT(properties, '$.isDefaultForFree') as "is_default_for_free",
JSON_EXTRACT(properties, '$.isDefaultForPaid') as "is_default_for_paid",
JSON_EXTRACT(properties, '$.isFreeTierEnabled') as "is_free_tier_enabled",
JSON_EXTRACT(properties, '$.isPaidEnabled') as "is_paid_enabled",
subscriptionId,
location,
autonomousdbversionsname
FROM azure_isv.oracle.autonomous_database_versions
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.dbWorkload') as "db_workload",
json_extract_path_text(properties, '$.isDefaultForFree') as "is_default_for_free",
json_extract_path_text(properties, '$.isDefaultForPaid') as "is_default_for_paid",
json_extract_path_text(properties, '$.isFreeTierEnabled') as "is_free_tier_enabled",
json_extract_path_text(properties, '$.isPaidEnabled') as "is_paid_enabled",
subscriptionId,
location,
autonomousdbversionsname
FROM azure_isv.oracle.autonomous_database_versions
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
