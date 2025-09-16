--- 
title: vw_group_quota_subscription_allocations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_group_quota_subscription_allocations
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

Creates, updates, deletes, gets or lists a <code>vw_group_quota_subscription_allocations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_group_quota_subscription_allocations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.quota.vw_group_quota_subscription_allocations" /></td></tr>
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
JSON_EXTRACT(properties, '$.region') as "region",
JSON_EXTRACT(properties, '$.limit') as "limit",
JSON_EXTRACT(properties, '$.shareableQuota') as "shareable_quota",
JSON_EXTRACT(properties, '$.name') as "name",
managementGroupId,
subscriptionId,
groupQuotaName,
resourceName,
$filter
FROM azure.quota.group_quota_subscription_allocations
WHERE managementGroupId = 'replace-me' AND subscriptionId = 'replace-me' AND groupQuotaName = 'replace-me' AND $filter = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.region') as "region",
json_extract_path_text(properties, '$.limit') as "limit",
json_extract_path_text(properties, '$.shareableQuota') as "shareable_quota",
json_extract_path_text(properties, '$.name') as "name",
managementGroupId,
subscriptionId,
groupQuotaName,
resourceName,
$filter
FROM azure.quota.group_quota_subscription_allocations
WHERE managementGroupId = 'replace-me' AND subscriptionId = 'replace-me' AND groupQuotaName = 'replace-me' AND $filter = 'replace-me';
```

</TabItem>
</Tabs>
