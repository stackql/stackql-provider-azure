--- 
title: vw_quotas
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_quotas
  - quota
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

Creates, updates, deletes, gets or lists a <code>vw_quotas</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_quotas</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.quota.vw_quotas" /></td></tr>
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
JSON_EXTRACT(properties, '$.limit') as "limit",
JSON_EXTRACT(properties, '$.unit') as "unit",
JSON_EXTRACT(properties, '$.name') as "name",
JSON_EXTRACT(properties, '$.resourceType') as "resource_type",
JSON_EXTRACT(properties, '$.quotaPeriod') as "quota_period",
JSON_EXTRACT(properties, '$.isQuotaApplicable') as "is_quota_applicable",
JSON_EXTRACT(properties, '$.properties') as "properties",
scope,
resourceName
FROM azure.quota.quotas
WHERE scope = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.limit') as "limit",
json_extract_path_text(properties, '$.unit') as "unit",
json_extract_path_text(properties, '$.name') as "name",
json_extract_path_text(properties, '$.resourceType') as "resource_type",
json_extract_path_text(properties, '$.quotaPeriod') as "quota_period",
json_extract_path_text(properties, '$.isQuotaApplicable') as "is_quota_applicable",
json_extract_path_text(properties, '$.properties') as "properties",
scope,
resourceName
FROM azure.quota.quotas
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
